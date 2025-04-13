require "pry"
# @param {Integer} x
# @return {Boolean}
def is_palindrome(num)

  result = false

  return result if num < 0

  num_arr = []

  @num = num.to_s.split("")

  @num_reverse = @num.reverse

  result = true if @num == @num_reverse
  result = false if @num != @num_reverse

  result
end

