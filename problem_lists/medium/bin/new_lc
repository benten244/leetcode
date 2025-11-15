#!/usr/bin/env ruby

raw_title = ARGV[0] or abort "Usage: new_lc '1234. Problem Title...'"

title = raw_title.dup

if title =~ /\A\s*(\d+)\.\s*(.+)\z/
  number    = Regexp.last_match(1)
  word_part = Regexp.last_match(2)
else
  number    = nil
  word_part = title
end

slug_core = word_part.downcase
slug_core.gsub!(/[^a-z0-9\s]/, " ")
slug_core.gsub!(/\s+/, "_")
slug_core.gsub!(/_+/, "_")
slug_core.gsub!(/\A_+|_+\z/, "")

slug = number ? "#{number}_#{slug_core}" : slug_core
filename = "#{slug}.rb"

# --- クラス名を生成（数字を除いたファイル名を CamelCase 化） ---
class_name = slug.sub(/\A\d+_/, "")                    # 先頭の数字_を除く
class_name = class_name.split("_").map(&:capitalize).join

# --- module 名はカレントディレクトリ名を CamelCase 化 ---
dir_name = File.basename(Dir.pwd)
module_name = dir_name.split("_").map(&:capitalize).join

# --- ファイル作成（テンプレ） ---
template = <<~RUBY
  # #{raw_title}

  module #{module_name}
    class #{class_name}
      class << self
        def solve(s)
          # TODO: implement your solution here
        end
      end
    end
  end
RUBY

if File.exist?(filename)
  abort "Error: #{filename} already exists!"
end

File.write(filename, template)

puts "Created: #{filename}"
puts "- module name: #{module_name}"
puts "- class name : #{class_name}"
