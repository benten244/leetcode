# 944. Delete Columns to Make Sorted

module Easy
  class DeleteColumnsToMakeSorted
    class << self
      def solve(strs:)
        hash            = ('a'..'z').each_with_index.to_h
        total_str_count = strs.count
        string_length = strs[0].length
        result = 0

        (0..string_length).each do |t|
          judge = ""

          total_str_count.times do |tsct|
            judge += strs[tsct][t] if strs[tsct][t]
          end

          result += 1 if (judge != judge.chars.sort.join)
        end

        result
      end
    end
  end
end
