require "pry"
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)

  integer_arr = []

  while head != nil
      integer_arr << head.val.to_i

      head = head.next
  end

  integer_arr.reverse

end
