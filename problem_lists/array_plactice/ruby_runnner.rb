require 'pry'

# ファイル名からクラス名を自動生成
def class_name_from_file(file_path)
  File.basename(file_path, '.rb')
    .split('_')
    .map(&:capitalize)
    .join
end

# Default setting ===============
FILE_PATH = 'plus_one'
require_relative FILE_PATH
MODULE = ArrayPlactice
SERVICE = MODULE.const_get(class_name_from_file(FILE_PATH))
# ===============================

module MODULE
  class RubyRunnner
    def execute(**options)
      result = SERVICE.plus_one(**options)
      p result
    end

  end
end

options = {
  digits: [1,2,3]
}
MODULE::RubyRunnner.new.execute(**options) if __FILE__ == $0