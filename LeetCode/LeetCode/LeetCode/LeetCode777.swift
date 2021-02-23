//
//  LeetCode777.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/23.
//  Copyright © 2021 liangqili.com. All rights reserved.
// 777. 在LR字符串中交换相邻字符
// https://leetcode-cn.com/problems/swap-adjacent-in-lr-string/
// 交换不变
// 1. 去除X剩余相等
// 2. L只能往左，R只能往右，判断L和R的index大小

import Foundation

class Solution777 {
    func canTransform(_ start: String, _ end: String) -> Bool {
        let startArray = Array(start)
        let endArray = Array(end)
        if startArray.filter({$0 != "X"}) != endArray.filter({$0 != "X"}) {
            return false
        }
        let count = startArray.count
        var t = 0
        for i in 0..<count {
            if startArray[i] == "L" {
                while endArray[t] != "L" {
                    t += 1
                }
                if i < t {
                    return false
                }
                t += 1
            }
        }
        
        t = 0
        for i in 0..<count {
            if startArray[i] == "R" {
                while endArray[t] != "R" {
                    t += 1
                }
                if i > t {
                    return false
                }
                t += 1
            }
        }
        return true
    }
}
