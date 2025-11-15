# @param {String[]} words
# @return {String[]}

module Medium
  class PalomdromePartitioning
    class << self
      def partition(s)
        result  = []
        log_arr = []

        index = 0
        hash = Hash.new(0)

        s.chars.each do |chara|
        end

      end

    def is_palindrome?(arr)
      hash = Hash.new(0)
      arr.each { |chara| hash[chara] += 1}

      target = hash.values.select { |val| val.odd?}

      target

      target.count < 2 && target != []
    end


    end
  end
end
