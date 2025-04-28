require "pry"

require "pry"

module HashMap

  class GetMajorityElementService

    class << self
      def majority_element(nums)
        count = Hash.new(0)
        nums.each { |n| count[n] += 1 }
        count.max_by { |_, v| v }.first
      end

      def 
    end
  
    end

  end
