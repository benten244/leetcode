def length_of_longest_substring(s)
  @string = s
  pre_p = 0
  fin_p = s.length > 0 ? 1: 0

  binding.pry

  ## 4. 1~3をRoopして、最大値を特定する作業
  until fin >= (@string.length - 1)
      ## 1. 適当な範囲に文字列を切り落とす作業
      split_string = detect_string(pre_p, fin_p, s)

      ## 2. その文字列の重複をチェックする作業
      ## 3. 文字列を縮めたり広げたりする作業
      if is_duplicated?(string)
          shrink!(string)
      else
          # 範囲広げる
      end

      ## 3.5 文字列から指定範囲文を切り落とす
      slice!(pre_p, fin_p)
  end

end

def detect_string(pre, fin, s)
  @string[pre .. fin]
end

def is_duplicated?(string)
  checking_hash = Hash.new(0)
  string.chars.each do |s|
      checking_hash[s] += 1
      return true if checking_hash[s] == 2
  end

  false
end

def shrink!(string)
  while is_duplicated?(string)
      string.pop
      string
  end
end

def expand!(string)
end

def slice!(pre, fin)
  @string.slice(pre, fin)
  @string
end

arguement = "abcabcbb"

length_of_longest_substring(arguement)
