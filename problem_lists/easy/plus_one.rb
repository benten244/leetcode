# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)

  # 普通に最後日の数字が上がるケース
  # 最後尾が9で、桁が上がるケース（上がり続けるケース）
  # -1が0になるケース

  p [9,9].join.to_i

  arr_digit = digits.count
  last_index = digits.count - 1

  nine_result = check_nine(digits, last_index) if digits[last_index] == 9

  digits[last_index] = digits[last_index] + 1 if digits[last_index] != 9 && nine_result.nil?

  nine_result.nil? ? digits : nine_result

end

def check_nine(digits, last_index)
  p "Check nine"

  return [1, 0] if digits.count == 1

  except_nine = digits.select { |d| d != 9 }

  if except_nine.empty?
      p "Check all nine"
      result = check_all_nine(digits)
  end

  if result.nil?
      digits.count.times do |t|

          p digits[last_index]

          if (digits[last_index] == 9 && last_index != 0)
              digits[last_index] = 0
          elsif last_index == 0
              digits[last_index] += 1 if digits[last_index] != 9
          else
              digits[last_index] += 1
          end

          p digits[last_index]
          break if digits[last_index] != 0

          last_index -= 1
      end
  end

  result.nil? ? digits : result
end

def check_all_nine(digits)
  digit = digits.count
  new_arr = [1]
  digit.times do |d|
      new_arr << 0
  end

  new_arr
end
