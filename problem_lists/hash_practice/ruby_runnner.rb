require 'pry'

def class_name_from_file(file_path)
  base = File.basename(file_path, '.rb')
  base = base.sub(/\A\d+_?/, '')
  base.split('_').map(&:capitalize).join
end

# ===============================
# 設定エリア
# ===============================
FILE_PATH  = '705_design_hashset'.freeze
require_relative FILE_PATH
METHOD_NAME = :number_of_substrings
NAMESPACE  = HashPractice
# ===============================

class RubyRunner
  def initialize(file_path:, namespace:, method_name:)
    @file_path   = file_path
    @namespace   = namespace
    @method_name = method_name
  end

  def execute(**options)
    require_relative @file_path

    klass_name = class_name_from_file(@file_path)
    service    = @namespace.const_get(klass_name)

    unless service.respond_to?(@method_name)
      raise NoMethodError, "#{service}##{@method_name} is not defined"
    end

    result = service.public_send(@method_name, **options)
    p result
  rescue LoadError => e
    warn "[RubyRunner] Failed to require #{@file_path}: #{e.message}"
    raise
  rescue NameError => e
    warn "[RubyRunner] Failed to resolve class #{klass_name} in #{@namespace}: #{e.message}"
    raise
  end
end

options = {
  s: '00011'
}

if __FILE__ == $0
  RubyRunner.new(
    file_path:   FILE_PATH,
    namespace:   NAMESPACE,
    method_name: METHOD_NAME
  ).execute(**options)
end
