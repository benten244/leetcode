# @param {String[]} words
# @return {String[]}
def class_name_from_file(file_path = __FILE__)
  File.basename(file_path, '.rb').split('_').map(&:capitalize).join
end

module ArrayPlactice
  class_name = class_name_from_file
  klass = Class.new do
    class << self
      def plus_one(digits:)
        # (digits.join().to_i + 1).to_s.split("").map { |val| val.to_i}

        digits.reverse 
      end
    end
  end
  const_set(class_name, klass)
end
