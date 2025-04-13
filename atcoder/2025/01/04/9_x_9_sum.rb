require "pry"
n = gets.to_i

vertical_arr = (1..9).to_a
horizontal_arr = (1..9).to_a

sum_arr = []

vertical_arr.count.times do |i|
  horizontal_arr.count.times do |j|
    sum_arr << vertical_arr[i] * horizontal_arr[j]
  end
end

sum_arr = sum_arr.reject { |s| s == n }

result = sum_arr.sum
puts result
