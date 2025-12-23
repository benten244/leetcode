# 1002. Find Common Characters

module Easy
  class FindCommonCharacters
    class << self
      def solve(words:)
        total = words.count
        initial_hash = Hash.new(0)

        1.times do |t|
          words[0].each_char { |c| initial_hash[c] += 1 }
        end

        words[1..].each_with_index do |word, i|
          temp_hash = Hash.new(0)
          word.each_char { |c| temp_hash[c] += 1 }

          initial_hash.each do |k, v|
            initial_hash[k] = temp_hash[k] if v > temp_hash[k]
            initial_hash[k] = 0 if temp_hash[k] == 0
          end
        end

        result = []

        initial_hash.each do |k, v|
          v.times { result << k }
        end

        result
      end
    end
  end
end
