//
//  LeetCode1438.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
// 滑动窗口+使用双队列存储最大最小值
// https://leetcode-cn.com/problems/longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit/
// 1438. 绝对差不超过限制的最长连续子数组

import Foundation

class Solution1438 {
    func longestSubarray(_ nums: [Int], _ limit: Int) -> Int {
        var left = 0, right = 0, ans = 0
        let count = nums.count
        var queMax = [Int]()
        var queMin = [Int]()
        while right < count {
            while !queMax.isEmpty && queMax.last! < nums[right] {
                queMax.removeLast()
            }
            while !queMin.isEmpty && queMin.last! > nums[right] {
                queMin.removeLast()
            }
            queMax.append(nums[right])
            queMin.append(nums[right])
            right += 1
            while !queMax.isEmpty && !queMin.isEmpty && queMax[0] - queMin[0] > limit {
                if (nums[left] == queMin[0]) {
                    queMin.removeFirst();
                }
                if (nums[left] == queMax[0]) {
                    queMax.removeFirst();
                }
                left += 1
            }
            ans = max(ans, right - left);
        }
        return ans
    }
}
