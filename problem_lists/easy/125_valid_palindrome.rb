# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  result = false
  string = s.downcase.gsub(/[^a-z0-9]/, "").split("")
  result = true if string == string.reverse

  result
end

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  p string = s.downcase.gsub(/[^a-z0-9]/, "")

  initial = 0
  terminal = string.length - 1

  while initial < terminal
      return false if string[initial] != string[terminal]

      initial += 1
      terminal -= 1
  end

  true
end
