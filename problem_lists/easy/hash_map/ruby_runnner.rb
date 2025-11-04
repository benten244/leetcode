require 'pry'
require_relative './2006_count_number_of_pairs_with_absolute_difference_k'

module HashMap
  class RubyRunnner

    def execute(nums, s)
      HashMap::CountSpecialQuardrupletsService.count_quadruplets(nums)
    end

  end
end

nums = [1,2,3,6]

HashMap::RubyRunnner.new.execute(nums, k) if __FILE__ == $0