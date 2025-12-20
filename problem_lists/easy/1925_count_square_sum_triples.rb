require "pry"

module Easy
  class CountSquareSumTriples
    class << self
     def count_triples(n:)
        squares = Array.new(n+1) { |i| i*i }
        result = 0

        (1..n).each do |a|
          (1..n).each do |b|
            c2 = squares[a] + squares[b]
            c = isqrt(c2)
            result += 1 if c <= n && c * c == c2
          end
        end

        result
      end

      def isqrt(n)
        return 0 if n < 1

        left = 1
        right = n
        ans = 0

        while left <= right
          mid = (left + right) / 2
          sq = mid * mid

          if sq == n
            return mid
          elsif sq < n
            ans = mid
            left = mid + 1
          else
            right = mid - 1
          end
        end

        ans
      end
    end
  end
end
