# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)

  result = false

  nums = nums.sort

  index = 0
  if nums.count > 1
    nums.each do |n|
      result = true if nums[index] == nums[index - 1]
      result = true if nums[index] == nums[index + 1]

      index += 1

      break if result == true
    end
  end

  result
end
