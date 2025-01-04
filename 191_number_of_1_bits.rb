# @param {Integer} n
# @return {Integer}
def hamming_weight(n)
  binary_arr = transfer_binary(n)

  binary_arr.select {|n| n == 1}.count
end


def transfer_binary(n)
  binary_arr = []
  while n >= 1
      extra = n % 2

      binary_arr << extra

      n = n / 2

      binary_arr << [1] if n == 0
  end

  binary_arr
end
