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

### 別解

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  majority_criteria = nums.length / 2

  hash = Hash.new(0)

  nums.each do |num|
    hash[num] += 1 # {3=>1}
    return num if hash[num] > majority_criteria
  end
end
