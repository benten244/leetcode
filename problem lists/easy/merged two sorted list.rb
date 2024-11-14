# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

def merge_two_lists(list1, list2)

  number_box = []
  @list1_arr = []
  @list2_arr = []

  return [] if (list1.nil?) && (list2.nil?)

  if (list1.nil? || list2.nil?)
      p list1
      p list2

     while !list1.nil?
          x = list1.val
          @list1_arr << x
          list1 = list1.next
     end

      while !list2.nil?
          x = list2.val
          @list2_arr << x
          list2 = list2.next
      end
  end

  number_box = @list1_arr if !@list1_arr.empty?
  number_box = @list2_arr if !@list2_arr.empty?


  while !list1.nil? && !list2.nil?
      x = list1.val
      y = list2.val

      @list1_arr << x
      @list2_arr << y

      list1 = list1.next
      list2 = list2.next
  end

  a_arr = @list1_arr
  b_arr = @list2_arr

  a = a_arr.count
  b = b_arr.count

  maximum = [a, b].max

  i = 0

  if (a_arr.count > 0 && b_arr.count > 0)
      maximum.times do
          min = [a_arr[i], b_arr[i]].min
          max = [a_arr[i], b_arr[i]].max

          number_box << min
          number_box << max

          i += 1
      end
      number_box
  end

  number_box
end
