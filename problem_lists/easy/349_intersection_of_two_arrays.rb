require 'pry'
require 'pry-byebug'
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)

  target1 = nums1.uniq
  target2 = nums2.uniq

  attachment = Hash[target1.map { |n| [n, nil]}]
  target2.each { |ta| attachment[ta] = ta if attachment.key?(ta)}
  attachment.values.compact
end

nums1 = [1,2,2,1]
nums2 = [2,2]
intersection(nums1, nums2)
