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
# @return {Integer}

# 初期値と、暫定最大深度を記録する
# 最大震度はreturn nilをするまで

def max_depth(root)
  return 0 if root.nil?

  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  return [left_depth, right_depth].max + 1
end


