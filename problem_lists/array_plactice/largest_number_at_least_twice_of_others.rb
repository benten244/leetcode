# @param {String[]} words
# @return {String[]}
def class_name_from_file(file_path = __FILE__)
  File.basename(file_path, '.rb').split('_').map(&:capitalize).join
end

module ArrayPlactice
  class_name = class_name_from_file
  klass = Class.new do
    class << self

      # def dominant_index(nums:)
      #   twice_hash = Hash.new(0)
      #   nums.each { |val| twice_hash[val] = (val*2)}

      #   result = -1
      #   index  = 0

      #   nums.each do |val|
      #     temp_hash = twice_hash.reject { |k, v| k == val}
        
      #     result = index if temp_hash.none? { |k, v| v > val }

      #     index += 1
      #   end

      #   result
      # end 

      def dominant_index(nums)
        max = nums.max
        max_index = nums.index(max)

        nums.each do |n|
          next if n == max
          return -1 if max < 2 * n
        end

        max_index
      end
    end
  end
  const_set(class_name, klass)
end
