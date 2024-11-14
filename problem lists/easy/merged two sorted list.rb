# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

def merge_two_lists(list1, list2)

  return [] if (list1.nil?) && (list2.nil?)
  if (list1.nil?) || (list2.nil?)
      list1.val
  end

  number_box = []

  a_arr = [1,2,4]
  b_arr = [1,3,4]

  a = a_arr.count
  b = b_arr.count
  maximum = [a, b].max

  i = 0

  maximum.times do

      # min = [a[i], b[i]].min
      # max = [a[i], b[i]].max
      a = a_arr[i]
      b = b_arr[i]

      number_box << a
      number_box << b

      i += 1
  end

  p a_arr
  p b_arr

  number_box

end
