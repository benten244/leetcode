# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)

  num_history = []
  precount = 0
  answer = 0

  nums.each do |num_1|
      next if num_history.include?(num_1)

      count = nums.select {|num_2| num_2 == num_1 }

      answer = num_1 if count.length > precount
      precount = count.length if count.length > precount

      num_history << num_1

      count = 0
  end

  answer
end
