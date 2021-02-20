//
//  TreeNode.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

/**
 * Definition for a binary tree node.
 *
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { val = 0; left = nil; right = nil }
    public init(_ val: Int) { self.val = val; left = nil; right = nil }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
