require "pry"
# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)

  return nums1 if n == 0

  pointa = -1

  arr_count = (nums1.count - m)

  arr_count.times do
      nums1[pointa] = nums2[pointa]
      pointa -= 1
  end

  nums1.sort!
end


# def merge(nums1, m, nums2, n)

#     return nums1 if n == 0

#     arr_count = (nums1.count - m)

#     starting_index = m

#     index = 0

#     arr_count.times do
#         nums1[starting_index] = nums2[index]
#         starting_index += 1
#         index += 1
#     end

#     p nums1

#     nums1.sort!
# end
