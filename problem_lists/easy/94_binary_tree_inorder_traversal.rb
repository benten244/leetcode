require "pry"
# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

# #<TreeNode:0x00007f9b4e014c58 @val=1, @left=nil, @right=#<TreeNode:0x00007f9b4e014aa0 @val=2, @left=#<TreeNode:0x00007f9b4e0149d8 @val=3, @left=nil, @right=nil>, @right=nil>>

# def inorder_traversal(root)
#     result = []
#     stack = []
#     current = root

#     while current || !stack.empty?
#         while current
#             stack.push(current)
#             current = current.left
#         end

#         current = stack.pop
#         result << current.val

#         current = current.right
#     end

#     result
# end

def inorder_traversal(root)
  return [] if root.nil?

  inorder_traversal(root.left) + [root.val] + inorder_traversal(root.right)
end
