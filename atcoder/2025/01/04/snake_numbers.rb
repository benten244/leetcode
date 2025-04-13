require "pry"
a, b = gets.split.map(&:to_i)
numbers = (a..b).to_a

result_flag_count = 0

numbers.each do |n|
  n.split("").each do |s|
    result_flag_count += 1 if n.select { |s| s > n[0] }.present?
  end
end

puts result_flag_count
