require 'pry'
require_relative '496_next_greater_element_I'

module HashMap
  class RubyRunnner

    def execute(nums1, nums2)
      result = HashMap::NextGreaterElementI.next_greater_element(nums1, nums2)
      p result
    end

  end
end

nums1 = [4,1,2]
nums2 = [1,3,4,2]
HashMap::RubyRunnner.new.execute(nums1, nums2) if __FILE__ == $0