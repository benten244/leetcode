require 'pry'
require_relative './350_intersection_of_two_arrays_ll'

module HashMap
  class RubyRunnner

    def execute(a, b)
      HashMap::IntersectionService.intersection(a, b)
    end

  end
end

a = [1,2,2,1]
b = [2,2]
runner = HashMap::RubyRunnner.new.execute(a, b) if __FILE__ == $0