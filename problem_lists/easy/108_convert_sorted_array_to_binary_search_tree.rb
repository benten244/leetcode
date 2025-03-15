def sorted_array_to_bst(nums)
  return nil if nums.empty?

  mid = nums.length / 2

  root = TreeNode.new(nums[mid])

  root.left = sorted_array_to_bst(nums[0...mid])
  root.right = sorted_array_to_bst(nums[mid+1..-1])

  root
end
