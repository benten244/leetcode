# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)

  binary_sum = a.to_i + b.to_i

  binary_sum = binary_sum.to_s.split("")

  index = binary_sum.count - 1
  pre_index = index - 1

  binary_sum.count.times do |n|
      p "times #{n}, Arr: #{binary_sum}"

      if p binary_sum[index].to_i >= 2 && (index != 0)
          binary_sum[index].to_i == 2 ? binary_sum[index] = '0' : binary_sum[index] = '1'
          binary_sum[pre_index] = (binary_sum[pre_index].to_i + 1).to_s
      elsif binary_sum[index].to_i >= 2 && (index == 0)
          binary_sum[index].to_i == 2 ? binary_sum[index] = '0' : binary_sum[index] = '1'
          binary_sum.unshift(1)
      end

      index -= 1
      pre_index -= 1
  end

  p binary_sum

  binary_sum.join
end
