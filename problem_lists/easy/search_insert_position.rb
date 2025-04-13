require "pry"
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)

  pre_index = -1
  current_index = 0

  return 0 if (nums.count == 1 && nums[current_index] == target)

  p "Target is #{target}"
  nums.each do |current_number|

      p "pre_index is #{nums[pre_index]}"
      p "current_index is #{nums[current_index]}"

      if p (nums[pre_index] < target || target < nums[current_index] || nums[current_index] == target) && (target < nums[current_index] || target == nums[current_index])
          return current_index
      end

      pre_index += 1
      current_index += 1
  end

  current_index
end
