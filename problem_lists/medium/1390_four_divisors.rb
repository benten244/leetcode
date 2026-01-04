# 1390. Four Divisors

module Medium
  class FourDivisors
    class << self
      def solve(nums:)
        total_point = 0

        nums.each do |num|
          divisor_point = []
          pre_ranze_horizon = num
            (1..(num/2)).each do |range_pointer|
              next if num.odd? && !range_pointer.odd?
              break if pre_ranze_horizon == range_pointer || is_square_root(range_pointer, num)

              if is_divide?(num, range_pointer)
                divisor_point << range_pointer
                pre_ranze_horizon = (num/range_pointer)
                divisor_point << (num/range_pointer) if range_pointer != pre_ranze_horizon
              end

              break if divisor_point.size > 4
          end

          total_point += divisor_point.sum if is_four_divisors?(divisor_point)
        end

        total_point
      end

      def is_four_divisors?(num_array)
        num_array.size == 4
      end

      def is_divide?(num, each_num)
        num%each_num == 0
      end

      def is_square_root(inte, num)
        (inte * inte) > num
      end
    end
  end
end
