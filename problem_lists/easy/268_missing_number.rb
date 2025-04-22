# @param {Integer[]} nums
# @return {Integer}

def missing_number(nums)
  max_value = nums.count+1

  number_hash = (0...max_value).map { |n| [n, nil] }.to_h

  (arr.count).times do |n|
      number_hash.store(n, nil)
  end

  p number_hash

  nums.each do |num|
      p num
      number_hash[num] = num if number_hash.key?(num)
  end
  
  return number_hash.select { |k, v| v.nil? }.keys[0]
end

def missing_number(nums)
  number_hash = {}
  (0...nums.count).each { |n| number_hash[n] = nil}
  nums.each { |n| number_hash[num] = num }
  number_hash.key(nil)
end

def missing_number(nums)
  number_hash = Hash[(0..nums.count).map { |n| [n, nil]}]
  nums.each { |n| number_hash[num] = num }
  number_hash.key(nil)
end