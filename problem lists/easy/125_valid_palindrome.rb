# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  result = false
  string = s.downcase.gsub(/[^a-z0-9]/, "").split("")
  result = true if string == string.reverse

  result
end
