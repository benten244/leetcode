require "pry"
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  p "nums: #{nums}"
  p "val: #{val}"

  index = 0

  nums.each do |n|
      next if n == val
      nums[index] = n
      index += 1
  end


  # nums.countにすると、削除された要素も含めたカウントを返す
  # indexにすることで、現存要素だけを返している。
  index
end
