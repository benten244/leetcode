require "pry"

module HashMap

  class StrobogrammaticNumber
    class << self
      # def is_strobogrammatic(nums)
      #   strobogrammatic_pair = {
      #     "6" => "9",
      #     "9" => "6",
      #     "8" => "8",
      #     "1" => "1",
      #     "0" => "0"
      #   }

      #   result = []

      #   nums.chars.reverse_each do |num|
      #     temp_val = strobogrammatic_pair[num]
      #     return false if temp_val == nil

      #     result << strobogrammatic_pair[num]
      #   end

      #   result.join == nums
      # end

      PAIRS = {
        "0" => "0",
        "1" => "1",
        "6" => "9",
        "8" => "8",
        "9" => "6"
      }

      def is_strobogrammatic(num)
        first, last = 0, num.length - 1

        while first <= last
          return false unless num[first] == PAIRS[num[last]]
          first += 1
          last -= 1
        end

        true
      end

    end
  
  end

end