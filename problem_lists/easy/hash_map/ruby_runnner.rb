require 'pry'
require_relative './1941_check_if_all_characters_have_equal_number_of_occurrences'

module HashMap
  class RubyRunnner

    def execute(s)
      binding.pry
      HashMap::JudgeGoodStringService.are_occurrences_equal(s)
    end

  end
end

s = 'abcabc'

HashMap::RubyRunnner.new.execute(s) if __FILE__ == $0