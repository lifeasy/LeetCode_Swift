//
//  LeetCode665.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/13.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给你一个长度为 n 的整数数组，请你判断在 最多 改变 1 个元素的情况下，该数组能否变成一个非递减数列。

 我们是这样定义一个非递减数列的： 对于数组中所有的 i (0 <= i <= n-2)，总满足 nums[i] <= nums[i + 1]。

  

 示例 1:

 输入: nums = [4,2,3]
 输出: true
 解释: 你可以通过把第一个4变成1来使得它成为一个非递减数列。
 示例 2:

 输入: nums = [4,2,1]
 输出: false
 解释: 你不能在只改变一个元素的情况下将其变为非递减数列。
  

 说明：

 1 <= n <= 10 ^ 4
 - 10 ^ 5 <= nums[i] <= 10 ^ 5

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/non-decreasing-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
// 边遍历边修改，判断修改次数
// 修改尽可能的改动最小满足的值，往小的改

import Foundation
class Solution665 {
    func checkPossibility(_ nums: [Int]) -> Bool {
        var arr = nums
        let count = arr.count
        if count < 3 {
            return true
        }
        var size = 0
        for i in 0..<count-1 {
            if arr[i] > arr[i+1] {
                size += 1
                if size > 1 {
                    return false
                }
                if i == 0 {
                    arr[i] = arr[i+1]
                } else if arr[i+1] >= arr[i-1] {
                    arr[i] = arr[i+1]
                } else {
                    arr[i+1] = arr[i]
                }
            }
        }
        return true
    }
}
