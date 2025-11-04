require "pry"

module HashMap

  class JudgeGoodStringService

    class << self
      def are_occurrences_equal(s)
        hash = Hash.new(0)
        s.each_char { |char| hash[char] += 1}
        hash.values.max == hash.values.min
      end
    end

  end
end


 def are_occurrences_equal(s)
    hash = Hash.new(0)

    s.chars.each do |sc|
      if hash.key?(sc)
        hash[sc] += 1
      else
        hash[sc] = 1
      end
    end

    
    hash.values.max == hash.values.min
  end

# s.chars.tally.values.uniq.size == 1