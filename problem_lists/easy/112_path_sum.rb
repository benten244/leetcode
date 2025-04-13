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
# @param {Integer} target_sum
# @return {Boolean}


def has_path_sum(root, target_sum)
  return false if root.nil?

  target_sum -= root.val

  return true if (target_sum == 0 && (root.right.nil? && root.left.nil?))

  (has_path_sum(root.right, target_sum) || has_path_sum(root.left, target_sum))
end
