# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)

  # 必要なもの
  # 何回配列内で計算するか
  # 前の配列の値

  # Input: numRows = 5
  # Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

  result = num_rows == 1 ? [[1]] : [[1],[1,1]]

  calculation = num_rows - 2

  calculation.times do
      index = 0

      #1. pre_result 登録する
      pre_result = result.last

      p "calcu_count: #{(pre_result.count - 1)}"

      integer_box = []

      # pre_resultの間を計算する
      (pre_result.count - 1).times do |n|
          integer =  (pre_result[index]).to_i + (pre_result[index+1]).to_i

          p integer

          integer_box << integer

          index += 1
      end

      # pre_resultの最前最後を挿入する
      integer_box.unshift(1)

      integer_box << 1

      p "Pre result: #{pre_result}"

      pre_result = integer_box

      result << integer_box
  end

  result
end
