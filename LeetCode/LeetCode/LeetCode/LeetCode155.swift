//
//  LeetCode155.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/3.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/min-stack/
 155. 最小栈
 */

import Foundation

class MinStack {
    var data = [Int]()
    var minData = [Int.max]
    var count = 0
    /** initialize your data structure here. */
    init() {

    }
    
    func push(_ x: Int) {
        data.append(x)
        count += 1
        let minValue = min(minData.last!,x)
        minData.append(minValue)
    }
    
    func pop() {
        guard count > 0 else {
            return
        }
        data.removeLast()
        count -= 1
        minData.removeLast()
    }
    
    func top() -> Int {
        guard count > 0 else {
            return Int.max
        }
        return data.last!
    }
    
    func getMin() -> Int {
        guard count > 0 else {
            return Int.max
        }
        return minData.last!
    }
}
