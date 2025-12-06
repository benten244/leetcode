require "pry"


def is_duplicated?(string)
  checking_hash = Hash.new(0)
  string.chars.each do |s|
      checking_hash[s] += 1
      return true if checking_hash[s] == 2
  end

  false
end

def length_of_longest_substring(s)
  return 0 if s.empty?

  chars_hash = {}
  max_length = 0
  pre_p = 0

  s.chars.each_with_index do |char, fin_p|
    if chars_hash.key?(char) && chars_hash[char] >= pre_p
      pre_p = chars_hash[char] + 1
    end
    max_length = [max_length, fin_p - pre_p + 1].max
    chars_hash[char] = fin_p
  end

  max_length
end


arguement = "abcabcbb"
length_of_longest_substring(arguement)
