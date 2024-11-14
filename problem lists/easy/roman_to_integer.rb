# @param {String} s
# @return {Integer}


def roman_to_int(roman)

  allocation = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
  }

  minus_allocation = {
      'IV' => -2,
      'IX' => -2,
      'XL' => -20,
      'XC' => -20,
      'CD' => -200,
      'CM' => -200
  }

  minus_array = ['IV', 'IX', 'XL', 'XC', 'CD', 'CM']

  @total_num = 0
  @minus_roman = 0
  rejected_array = []
  n = []

  minus_array.each do |ma|
      if roman.include?(ma)
          rejected_array << ma
      end
  end

  minus_amount = []
  if rejected_array
      rejected_array.each do |a|
          numnum = minus_allocation[a]
          minus_amount << numnum
      end
  end

 @minus_amount =  minus_amount.empty? ? 0 : minus_amount.sum

  roman.length.times do |i|
      n << roman[i]
  end

  n.each do |num|
      new_num = allocation[num].to_i
      @total_num += new_num
  end

  (@total_num + @minus_amount)
end
