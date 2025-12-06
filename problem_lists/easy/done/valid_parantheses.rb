require "pry"
# @param {String} s
# @return {Boolean}
def is_valid(s)

  left_parantheses = []
  @right_parantheses = []
  result_arr = []

  parantheses_string_arr = s.split("")
  result = false
  left_parantheses_idx = 0

  parantheses_string_arr.each do |parentheses|
      pre_right_parantheses = @right_parantheses

      if parentheses == '['
          left_parantheses << parentheses
      elsif parentheses == '('
          left_parantheses << parentheses
      elsif parentheses == '{'
          left_parantheses << parentheses
      elsif parentheses == ']'
          @right_parantheses << parentheses
      elsif parentheses == ')'
          @right_parantheses << parentheses
      elsif parentheses == '}'
          @right_parantheses << parentheses
      end

      if !@right_parantheses.empty?
          p result = pair?(left_parantheses, @right_parantheses)

          if result
              @right_parantheses.pop
              left_parantheses.pop
          end

          result_arr << result
      end

      result = (!result_arr.empty? && result_arr.all?(true)) && (left_parantheses.empty? && @right_parantheses.empty?)
  end

  result
end

def pair?(left, right)
  if right[0] == ']'
      left.last == '['
  elsif right[0] == ')'
      left.last == '('
  elsif right[0] == '}'
      left.last == '{'
  end
end
