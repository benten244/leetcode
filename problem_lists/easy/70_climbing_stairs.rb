# 70. Climbing Stairs

module Easy
  class ClimbingStairs
    class << self
      def climb_stairs(n:)
        return 1 if n == 1

        dp = Array.new(n+1, 0)

        dp[1] = 1
        dp[2] = 2

        (3..n).each do |i|
          dp[i] = dp[i-1] + dp[i-2]
        end

        dp[n]
      end
    end
  end
end
