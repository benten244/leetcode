require "pry"
def is_isomorphic(s, t)
  s_hash = Hash.new(0)
  t_hash = Hash.new(0)

  s_hash = save_string_hash(s, s_hash)
  t_hash = save_string_hash(t, t_hash)

  s_hash.values == t_hash.values
end

def save_string_hash(string, hash)
  index = 0

  string.chars.each do |char|
    binding.pry
    if !hash.key?(char)
      hash[char] = index
      index += 1
    end
  end

  pattern = []

  string.chars.each do |char|
    pattern << hash[char]
  end

  pattern
end

s = "egg"
t = "add"
is_isomorphic(s, t)
