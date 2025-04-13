require "pry"
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  return true if root.nil?

  left_height = calculate_height(root.left)
  right_height = calculate_height(root.right)

  (left_height - right_height).abs <= 1 &&
  is_balanced(root.left) &&
  is_balanced(root.right)
end

def calculate_height(root)
  return 0 if root.nil?

  left_height = calculate_height(root.left)
  right_height = calculate_height(root.right)

  [left_height, right_height].max + 1
end
