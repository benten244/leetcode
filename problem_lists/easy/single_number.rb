require "pry"
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)

  p nums = nums.sort

  index = 0

  result = nil

  p nums.count

  nums.count.times do |n|

      result = nums[index] if nums[index] != nums[index + 1]

      break if !result.nil?

      index += 2
  end

  result

end
