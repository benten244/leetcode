# @param {Integer} x
# @return {Integer}
def my_sqrt(x)

  a = 0
  b = a - 1
  result = nil

  while result.nil?
      result = a if (a * a) == x
      result = b if (a * a) > x

      a += 1
      b += 1
  end

  result

end
