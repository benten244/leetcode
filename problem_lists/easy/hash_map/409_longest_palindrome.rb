# @param {String[]} words
# @return {String[]}

module HashMap
    class LongestPalindrome
      class << self
        def longest_palindrome(s)
          chara_hash = Hash.new(0)
          s.chars.each do |char|
              if chara_hash[char] == 0
                  chara_hash[char] = 1
              else
                  chara_hash[char] += 1
              end
          end
      
          even_num = chara_hash.values.select { |val| !val.odd?}.sum ||= 0
          odd_num      = chara_hash.values.select { |val| val.odd?} 

          if odd_num != []
            odd_num = (odd_num.sum - (odd_num.count - 1))
          else
            odd_num = 0
          end
      
          return even_num.to_i + odd_num.to_i
        end
      end
    end
  end
  