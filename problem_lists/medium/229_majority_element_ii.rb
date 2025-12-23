# 229. Majority Element II

module Medium
  class MajorityElementIi
    class << self
      def solve(nums:)
        size = nums.size
        return nums if size < 3
        based_point = based_point(size)

        result_array = []

        count_hash = Hash.new(0)
        nums.each{ |num| count_hash[num] += 1}

        binding.pry

        result_array << count_hash.select{ |_, v| v >= based_point }.keys

        result_array.flatten.uniq
      end

      def based_point(n)
        (n/3)+1
      end
    end
  end
end
