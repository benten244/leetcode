# 955. Delete Columns to Make Sorted II

module Medium
  class DeleteColumnsToMakeSortedIi
    class << self
      def solve(strs:)
        n = strs.length
        m = strs[0].length
        deleted = 0

        # sorted[i] = (strs[i] < strs[i+1]) がすでに確定したか
        sorted = Array.new(n - 1, false)

        (0...m).each do |col|
          # この列を使うと順序違反が起きるか？（未確定ペアだけ見る）
          bad = false
          (0...n-1).each do |i|
            next if sorted[i]
            if strs[i][col] > strs[i + 1][col]
              bad = true
              break
            end
          end

          if bad
            deleted += 1
            next
          end

          binding.pry

          # この列で確定するペアを確定させる
          (0...n-1).each do |i|
            next if sorted[i]
            if strs[i][col] < strs[i + 1][col]
              sorted[i] = true
            end
          end

          # すべて確定したら終了
          break if sorted.all?
        end

        deleted
      end
    end
  end
end
