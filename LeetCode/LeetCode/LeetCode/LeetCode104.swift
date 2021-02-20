//
//  LeetCode104.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
// https://leetcode-cn.com/problems/maximum-depth-of-binary-tree/
// 104. 二叉树的最大深度

import Foundation

class Solution104 {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDepth = maxDepth(root!.left)
        let rightDepth = maxDepth(root!.right)
        return max(leftDepth, rightDepth) + 1
    }
}
