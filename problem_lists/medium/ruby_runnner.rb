require 'pry'

# ファイル名からクラス名を自動生成
def class_name_from_file(file_path)
  File.basename(file_path, '.rb')
    .split('_')
    .map(&:capitalize)
    .join
end

# Default setting ===============
FILE_PATH = 'diagonal_traverse'
require_relative FILE_PATH
MODULE = Medium
SERVICE = MODULE.const_get(class_name_from_file(FILE_PATH))
# ===============================

module MODULE
  class RubyRunnner
    def execute(**options)
      result = SERVICE.find_diagonal_order(**options)
      p result
    end

  end
end

options = {
  # mat: [[1,2],[3,4]]
  mat: [[1,2,3],[4,5,6],[7,8,9]]
}
MODULE::RubyRunnner.new.execute(**options) if __FILE__ == $0