require "pry"

module HashMap

  class CountNumberDifferenceService

    class << self
      def count_k_difference(nums, k)

        # answer = 0

        # hash = Hash.new(0)

        # nums.each do |n|
        #   answer += hash[n - k] if hash.key?(n - k)
        #   answer += hash[n + k] if hash.key?(n + k)
      
        #   hash[n] += 1
        # end
      

        # answer

        nums.tally.sum { |n, c| (nums.count(n + k) + nums.count(n - k)) * c } / 2
      end
    end

  end
end
