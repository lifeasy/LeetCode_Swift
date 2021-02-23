//
//  LeetCode1052.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/23.
//  Copyright © 2021 liangqili.com. All rights reserved.
// 滑动窗口 计算改变的最大值
// 1052. 爱生气的书店老板
// https://leetcode-cn.com/problems/grumpy-bookstore-owner/

import Foundation

class Solution1052 {
    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ X: Int) -> Int {
        let count = grumpy.count
        var _cus = customers
        var ans = 0
        for i in 0..<count {
            if grumpy[i] == 0 {
                ans += customers[i]
                _cus[i] = 0
            }
        }
        var maxValue = 0
        var cur = 0, left = 0, right = 0
        while right < count {
            cur += _cus[right]
            if right - left + 1 > X {
                cur -= _cus[left]
                left += 1
            }
            right += 1
            maxValue = max(maxValue,cur)
        }
        return ans + maxValue
    }
}
