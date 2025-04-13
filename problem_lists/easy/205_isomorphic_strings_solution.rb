require "pry"
def is_isomorphic(s, t)
  s_hash = Hash.new(0)
  t_hash = Hash.new(0)

  s_hash = save_string_hash(s, s_hash)
  t_hash = save_string_hash(t, t_hash)

  s_hash.values == t_hash.values
end

def save_string_hash(string, hash)
  string.chars.each do |s|
    if hash[s].positive?
      hash[s] += 1
    else
      hash[s] = 0
    end
  end
  hash
end


s = "egg"
t = "add"
is_isomorphic(s, t)
