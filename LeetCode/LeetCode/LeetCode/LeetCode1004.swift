//
//  LeetCode1004.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
// 滑动窗口
//  https://leetcode-cn.com/problems/max-consecutive-ones-iii/
//  1004. 最大连续1的个数 III

import Foundation

class Solution1004 {
    func longestOnes(_ A: [Int], _ K: Int) -> Int {
        var left = 0 , right = 0
        var count = A.count
        var zeroCounter = 0, ans = 0
        while right < count {
            if A[right] == 0 {
                zeroCounter += 1
            }
            right += 1
            while zeroCounter > K {
                if A[left] == 0 {
                    zeroCounter -= 1
                }
                left += 1
            }
            ans = max(ans, right - left)
        }
        return ans
    }
}
