# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)

  # Excelだと26 = Zだが、インデックスとの兼ね合いで 25 ということにしたい。
  # column_number = 26だと、Zだが、インデックスを使う以上、25ということにして、余りを25にしたい。
  # 各桁の数字に上記のルールを適用させる必要があるため、各ループで-1をしないといけない？直感に反するが・・・

  max = 26

  alpha_arr = ('A'..'Z').to_a

  result_arr = []

  while column_number > 0
      column_number -= 1

      extra = column_number % 26

      result_arr << alpha_arr[extra]

      column_number /= max
  end

  result_arr.join().reverse
end
