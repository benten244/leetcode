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

# 1st solution
def delete_duplicates(head)

  array = []

  return [] if head.nil?

  while true
      array << head.val if !array.include?(head.val)

      break if head.next == nil

      head = head.next
  end

  array
end

# 2nd solution
def delete_duplicates(head)

  current = head

  return head if head.nil? || head.next.nil?

  while current && current.next
    if current.val == current.next.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end
