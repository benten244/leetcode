require 'pry'
require_relative '131_palindrome_partitioning'

module Medium
  class RubyRunnner

    def execute(*args)
      # 引数を柔軟に解析
      parsed_args = args.map { |arg| self.class.parse_arg(arg) }
      
      result = Medium::PalomdromePartitioning.partition(*parsed_args)
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
  args = ARGV.map { |arg| Medium::RubyRunnner.parse_arg(arg) }
  Medium::RubyRunnner.new.execute(*args)
end
