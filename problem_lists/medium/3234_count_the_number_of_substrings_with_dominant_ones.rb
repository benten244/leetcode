# 3234. Count the Number of Substrings With Dominant Ones

module Medium
  class CountTheNumberOfSubstringsWithDominantOnes
    class << self
      # s = "00011"
      def number_of_substrings(s:)
        string_arr = s.split("")




        # pattern += 1 if over_base_point?(arr)
      end

      def build_arr_and_point_hash(arr)
        hash  = {}
        index = 0

        start_point = 0
        arr.each do |ar|

          hash[partial_]
        end
      end


      def over_base_point?(arr)
        zeros = arr.select { |ar| ar == '0'}.count
        ones  = arr.select { |ar| ar == '1'}.count

        square!(zeros) < ones
      end

      def square!(num)
        num ** 2
      end
    end
  end
end

# 部分文字列の中で、0 を二乗しても 1 の数の方が多いやつのパターンは何個か
# 0 ** 2 の個数
# 1の個数
# それらを判定する条件
# ただカウントの必要がない部分文字列があるかもしれないので、それは要チェック
