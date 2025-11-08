# @param {String[]} words
# @return {String[]}

module HashMap
  class NextGreaterElementI
    class << self
      def next_greater_element(nums1, nums2)
        next_greater = build_next_greater_map(nums2)
        nums1.map { |num| next_greater[num] }
      end
  
      private
  
      def build_next_greater_map(nums)
        stack = []
        map = {}
  
        nums.reverse_each do |num|
          # 自分以下はNG（「次に大きい」候補にならない）
          stack.pop while stack.any? && stack[-1] <= num
  
          # 残ってるトップが「右側の次に大きい値」
          map[num] = stack.empty? ? -1 : stack[-1]
  
          # 今の値をスタックに積む（これが左側から見たときの候補になる）
          stack << num
        end
  
        map
      end
    end
  end
  


  # class NextGreaterElementI
  #   class << self
  #     def next_greater_element(nums1, nums2)

  #       hash_nums1 = Hash.new(0)

  #       index = 0
  #       nums1.each do |val|
  #         hash_nums1[index] = val
  #         index += 1
  #       end

  #       hash_nums2 = Hash.new(0)

  #       index = 0
  #       nums2.each do |val|
  #         hash_nums2[index] = val
  #         index += 1
  #       end

  #       result = []
  #       hash_nums1.values.each do |val|
  #         target_values = values_after_value(hash_nums2, val)
  #         target_values == [] ? target_value = -1 : target_value = target_values
  #         binding.pry
  #         val < target_value ? result << target_value : result << -1
  #       end

  #       result
  #     end

  #     def values_after_value(hash, target_value)
  #       index = hash.key(target_value)
  #       return [] unless index


  #       hash.select { |k, _| k > index}.values.each do |val|
  #         binding.pry
  #         return val if target_value < val
  #       end

  #       []
  #     end
  #   end
  # end
end
