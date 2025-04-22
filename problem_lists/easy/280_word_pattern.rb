require "pry"


def word_pattern(pattern, s)
  pattern_arr = pattern.split("")
  attachment = s.split(" ")
  return false if pattern.length != attachment.count
  pattern_hash = Hash[pattern.split("").map { |p| [p, nil]}]
  index = 0

  attachment.each do |a|
    unassigend_key = pattern_hash.key(nil)
    if !pattern_hash.value?(a) && unassigend_key
      pattern_hash[unassigend_key] = a
    end

    return false if pattern_hash.key(a) != pattern_arr[index]

    index += 1
  end

  true
end

pattern = "abba"
s = "dog cat cat dog"
word_pattern(pattern, s)