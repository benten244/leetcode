require "pry"

module HashMap

  class GetMajorityElementService

    class << self
      def majority_element(nums)
        count = Hash.new(0)
        nums.each { |n| count[n] += 1 }
        count.max_by { |_, v| v }.first
      end

      def boyer_moore_voting(nums)
        count = 0
        candidate = nil

        nums.each do |num|
          if count == 0
            candidate = num
          end

          count += (num == candidate ? 1 : -1)
        end

        candidate
      end
    end
  
  end

end

# memo
# def majority_element(nums)

#   num_history = []
#   precount = 0
#   answer = 0

#   nums.each do |num_1|
#       next if num_history.include?(num_1)

#       count = nums.select {|num_2| num_2 == num_1 }

#       answer = num_1 if count.length > precount
#       precount = count.length if count.length > precount

#       num_history << num_1

#       count = 0
#   end

#   answer
# end