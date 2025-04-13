require "pry"
# @param {String} s
# @return {Integer}
def length_of_last_word(s)

  # スペースごとに配列にする。
  string_arr = s.split(" ")
  result_string_arr = string_arr.reverse

  result_string_arr[0].length

end
