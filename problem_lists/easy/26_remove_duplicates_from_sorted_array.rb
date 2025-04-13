require "pry"
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  i = 0

  nums.each_with_index do |num, index|
      if index == 0 || nums[index] != nums[index - 1]
          nums[i] = num
          i += 1
      end
  end

  i
end
