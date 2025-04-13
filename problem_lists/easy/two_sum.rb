require "pry"
def two_sum(nums, target)
  num_hash = {}

  nums.each_with_index do |num, i|
    completemnt = target - num

    if num_hash.key?(completemnt)
      return [num_hash[completemnt], i]
    end

    binding.pry

    num_hash[num] = i
  end
end
