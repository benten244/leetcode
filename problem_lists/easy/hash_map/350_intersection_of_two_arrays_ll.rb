require "pry"

module HashMap

  class IntersectionService

    class << self

      def intersection(nums1, nums2)
        nums1_hash = nums1.each_with_object(Hash.new(0)) { |n, h| h[n] += 1}
        nums2_hash = nums2.each_with_object(Hash.new(0)) { |n, h| h[n] += 1}
        
        common_keys = nums1_hash.keys & nums2_hash.keys
        
        answer = []

        common_keys.each do |ck|
          times = [nums1_hash[ck], nums2_hash[ck]].min
          answer.concat(Array.new(times) { ck })
        end

        answer
      end

    end

  end
end
