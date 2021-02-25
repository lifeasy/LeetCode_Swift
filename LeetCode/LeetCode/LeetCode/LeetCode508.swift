//
//  LeetCode508.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/26.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
// 508. 出现次数最多的子树元素和
// https://leetcode-cn.com/problems/most-frequent-subtree-sum/
// 深度优先递归出所有子树和 let sum = root!.val + left + right
// 使用map存储和出现的次数
import Foundation
class Solution508 {
    var map = [Int:Int]()
    var maxCount = 0
    func findFrequentTreeSum(_ root: TreeNode?) -> [Int] {
        calcSum(root)
        var ans = [Int]()
        for (key,value) in map {
            if value == maxCount {
                ans.append(key)
            }
        }
        return ans
    }
    func calcSum(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let left = calcSum(root!.left)
        let right = calcSum(root!.right)
        let sum = root!.val + left + right
        map[sum] = (map[sum] ?? 0) + 1
        maxCount = max(maxCount,map[sum]!)
        return sum
    }
}
