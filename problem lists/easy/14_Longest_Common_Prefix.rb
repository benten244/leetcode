# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)

  return strs[0] if strs.count == 1
  mid       = strs.length / 2
  left_arr  = strs[0...mid]
  right_arr = strs[mid..-1]

  left_common_prefix = common_in_arr(left_arr)
  right_common_prefix = common_in_arr(right_arr)

  final_compare_arr = []
  final_compare_arr << left_common_prefix
  final_compare_arr << right_common_prefix

  common_in_arr(final_compare_arr)
end


def common_in_arr(arr)
  return "" if arr.empty?

  common_prefix = arr[0]

  arr.each do |string|
      while !string.start_with?(common_prefix)
          common_prefix = common_prefix[0...-1]
          break if common_prefix.empty?
      end
  end

  common_prefix
end

