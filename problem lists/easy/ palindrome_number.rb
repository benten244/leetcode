def is_palindrome(x = 13531)

  #1. 絶対にないケースを弾く
  return false if x < 0
  return false if (x % 10).zero?

  reversed_num = 0

  while x > reversed_num

    # いちばん最後の桁を取得
    digit = x % 10

    # 桁を上げて、最後日に数字を入れる
    reversed_num = reversed_num * 10 + digit

    # 桁を下げる
    x /= 10
  end

  # 桁数が偶数の場合は、reversed_numとxが同じになる
  # 桁数が奇数の場合は、reversed_numとxが同じになる
  x == reversed_num || x == reversed_num / 10

end
