# @param {Integer} row_index
# @return {Integer[]}

# Example 1:

# Input: rowIndex = 3
# Output: [1,3,3,1]
# Example 2:

# Input: rowIndex = 0
# Output: [1]
# Example 3:

# Input: rowIndex = 1
# Output: [1,1]

# p "Pre Array: #{pre_array}"
#         p "Insert Num #{(pre_array[n]).to_i + (pre_array[n+1]).to_i}"

def get_row(row_index)
  result = [1]
  last_array = result

  row_index.times do |n|
      num_array = []

      calculation_array_times = (last_array.count - 1)

      calculation_array_times.times do |n|
          p insert_num = (last_array[n]).to_i + (last_array[n+1]).to_i

          num_array << insert_num
      end

      num_array.unshift(1)

      num_array << 1

      p "Num Array: #{num_array}"

      result = num_array

      last_array = num_array
  end

  result
end
