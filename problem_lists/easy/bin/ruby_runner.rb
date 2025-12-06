require 'pry'
require 'pathname'

def class_name_from_file(file_path)
  base = File.basename(file_path, '.rb')
  base = base.sub(/\A\d+_?/, '')
  base.split('_').map(&:capitalize).join
end

# ===============================
# 設定エリア
# ===============================
# FILE_PATH: problem_lists/easy 配下の .rb ファイルのパス（絶対 or 相対）
# 例: '/Users/t.umemura/leetcode/problem_lists/easy/two_sum.rb'
FILE_PATH   = 'problem_lists/easy/70_climbing_stairs.rb'.freeze
METHOD_NAME = :climb_stairs
NAMESPACE   = nil
OPTIONS     = {
  n: 2
}
# ===============================

module RunnerSupport
  EASY_ROOT = File.expand_path('..', __dir__)

  module_function

  def normalize_file_path(file_path)
    with_ext = file_path.end_with?('.rb') ? file_path : "#{file_path}.rb"
    absolute = absolute_path(with_ext)

    unless absolute.start_with?(EASY_ROOT)
      raise ArgumentError, "FILE_PATH must be under #{EASY_ROOT}"
    end

    absolute
  end

  def absolute_path(path)
    pn = Pathname.new(path)
    return pn.cleanpath.to_s if pn.absolute?

    stripped = path.sub(%r{\A(?:\./)?problem_lists/easy/}, '')
    File.expand_path(stripped, EASY_ROOT)
  end

  def detect_namespace(file_path)
    relative = Pathname.new(file_path).relative_path_from(Pathname.new(EASY_ROOT))
    dir_name = relative.dirname.to_s
    dir_name = File.basename(EASY_ROOT) if dir_name == '.' || dir_name.empty?
    camel = dir_name.split('_').map(&:capitalize).join
    Object.const_get(camel)
  end
end

class RubyRunner
  def initialize(file_path:, namespace:, method_name:)
    @file_path   = file_path
    @namespace   = namespace
    @method_name = method_name
  end

  def execute(**options)
    normalized_path = RunnerSupport.normalize_file_path(@file_path)
    require normalized_path

    namespace  = @namespace || RunnerSupport.detect_namespace(normalized_path)
    klass_name = class_name_from_file(normalized_path)
    service    = namespace.const_get(klass_name)

    unless service.respond_to?(@method_name)
      raise NoMethodError, "#{service}##{@method_name} is not defined"
    end

    result = service.public_send(@method_name, **options)
    p result
  rescue LoadError => e
    warn "[RubyRunner] Failed to require #{@file_path}: #{e.message}"
    raise
  rescue NameError => e
    warn "[RubyRunner] Failed to resolve class #{klass_name}: #{e.message}"
    raise
  end
end

if __FILE__ == $0
  RubyRunner.new(
    file_path:   FILE_PATH,
    namespace:   NAMESPACE,
    method_name: METHOD_NAME
  ).execute(**OPTIONS)
end
