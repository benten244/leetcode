require 'pry'
require_relative '131_palindrome_partitioning'

module Medium
  class RubyRunnner

    def execute(nums)
      result = Medium::PalomdromePartitioning.partition(nums)
      p result
    end

  end
end

nums = "aab"
Medium::RubyRunnner.new.execute(nums) if __FILE__ == $0