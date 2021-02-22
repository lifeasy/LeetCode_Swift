//
//  LeetCode144.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/23.
//  Copyright © 2021 liangqili.com. All rights reserved.
// https://leetcode-cn.com/problems/binary-tree-preorder-traversal/
// 144. 二叉树的前序遍历

import Foundation

class Solution144 {
    var nums = [Int]()
    //递归
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        nums.append(root!.val)
        preorderTraversal(root!.left)
        preorderTraversal(root!.right)
        return nums
    }
    // 迭代 手动维护一个栈保存遍历的节点
    func preorderTraversal2(_ root: TreeNode?) -> [Int] {
        var stack = [TreeNode?]()
        var ans = [Int]()
        if root == nil {
            return ans
        }
        var point = root
        while !stack.isEmpty || point != nil {
            while point != nil {
                stack.append(point)
                ans.append(point!.val)
                point = point!.left
            }
            point = stack.last!
            stack.removeLast()
            point = point!.right
        }
        return ans
    }
}
