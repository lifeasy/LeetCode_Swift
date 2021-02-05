//
//  LeetCode643.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/4.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/maximum-average-subarray-i/
 643. 子数组最大平均数 I
 滑动窗口
 */

import Foundation

class Solution643 {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var n = k
        let count = nums.count
        var sum = 0
        for i in 0..<n {
            sum += nums[i]
        }
        var ans = sum
        while n < count {
            sum = sum + nums[n] - nums[n-k]
            ans = max(ans,sum)
            n += 1
        }
        return Double(ans)/Double(k)
    }
}
