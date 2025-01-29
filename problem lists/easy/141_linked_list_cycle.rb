# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil? || head.next.nil?

  visited = []

  while head
      return true if visited.include?(head)

      visited << head
      head = head.next
  end

  false
end
