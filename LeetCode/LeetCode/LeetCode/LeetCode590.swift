//
//  LeetCode590.swift
//  LeetCode
//
//  Created by 360JR on 2021/3/7.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
// 590. N 叉树的后序遍历
// https://leetcode-cn.com/problems/n-ary-tree-postorder-traversal/

import Foundation

class Solution590 {
    var ans = [Int]()
    func postorder(_ root: Node?) -> [Int] {
        if root == nil {
            return ans
        }
        for node in root!.children {
            postorder(node)
        }
        ans.append(root!.val)
        return ans
    }
}
