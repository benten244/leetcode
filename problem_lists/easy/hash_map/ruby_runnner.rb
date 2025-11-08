require 'pry'

# ファイル名を設定（変更する場合はここだけ変更）
FILE_NAME = '496_next_greater_element_I'

# ファイル名から自動的にクラス名とモジュール名を生成
require_relative FILE_NAME

module RubyRunnnerHelper
  # ファイル名からクラス名を生成
  # 例: "496_next_greater_element_I" -> "NextGreaterElementI"
  def self.class_name_from_file(file_name)
    file_name
      .split('_')
      .reject { |part| part.match?(/^\d+$/) } # 数字を除外
      .map(&:capitalize)
      .join
  end
  
  # ディレクトリ名からモジュール名を推測
  # 例: ".../hash_map" -> "HashMap"
  def self.module_name_from_dir(dir_path)
    dir_name = File.basename(dir_path)
    dir_name.split('_').map(&:capitalize).join
  end
end

# 自動生成されたクラス名とモジュール名
CLASS_NAME = RubyRunnnerHelper.class_name_from_file(FILE_NAME)
MODULE_NAME = RubyRunnnerHelper.module_name_from_dir(File.dirname(File.expand_path(__FILE__)))
MODULE = Object.const_get(MODULE_NAME)
CLASS = MODULE.const_get(CLASS_NAME)

module MODULE
  class RubyRunnner

    def execute(*args)
      # 引数を柔軟に解析
      parsed_args = args.map { |arg| self.class.parse_arg(arg) }
      
      # メソッド名を自動検出（最初のpublicメソッド）
      method_name = CLASS.public_methods(false).first
      result = CLASS.send(method_name, *parsed_args)
      p result
    end

    # 引数を解析（どんな形式でも受け取れる）
    def self.parse_arg(arg)
      # 既に配列形式の文字列（クォート済み）
      if arg.is_a?(String) && arg.start_with?('[') && arg.end_with?(']')
        eval(arg)
      # カンマ区切りの数値（数値のみ）
      elsif arg.is_a?(String) && arg.match?(/^[\d,\s-]+$/) && arg.include?(',')
        arg.split(',').map(&:strip).map(&:to_i)
      # 文字列（クォート済み）
      elsif arg.is_a?(String) && ((arg.start_with?('"') && arg.end_with?('"')) || (arg.start_with?("'") && arg.end_with?("'")))
        eval(arg)
      # 数値（単一）
      elsif arg.is_a?(String) && arg.match?(/^-?\d+$/)
        arg.to_i
      # カンマ区切りの文字列（文字列として扱う）
      elsif arg.is_a?(String) && arg.include?(',')
        arg.split(',').map(&:strip)
      # その他はそのまま（既に配列や数値の場合はそのまま）
      else
        arg
      end
    end

  end
end

# コマンドライン引数から実行
if __FILE__ == $0
  args = ARGV.map { |arg| MODULE::RubyRunnner.parse_arg(arg) }
  MODULE::RubyRunnner.new.execute(*args)
end
