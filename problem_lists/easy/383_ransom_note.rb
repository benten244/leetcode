# 383. Ransom Note

module Easy
  class RansomNote
    class << self
      def solve(ransom_note:, magazine:)
        count = Hash.new(0)
        magazine.each_char { |c| count[c] += 1 }

        ransom_note.each_char do |rn|
          return false if count[rn] == 0

          count[rn] -= 1
        end

        true
      end
    end
  end
end
