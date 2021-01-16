//
//  BubbleSort.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/5.
//  Copyright © 2021 liangqili.com. All rights reserved.
//  冒泡排序
/**
 外层控制循环次数
 内层比较相邻元素，如果后面大于前面交换
 内层一次循环，理论上将当前最大的元素交换到最后
 重复遍历，直到交换完成
 */

import Foundation

extension Array {
    mutating func bubbleSort() {
        for i in 0..<self.count-1 {
            for j in 0..<self.count-1-i {
                if self.index(0, offsetBy: j) > self.index(0, offsetBy: j+1) {
                    self.swapAt(j, j+1)
                }
            }
        }
    }
}

class BubbleSort {
    static func sort(_ arr:inout [Int]) -> [Int] {
        for i in 0..<arr.count-1 {
            for j in 0..<arr.count-i-1 {
                if arr[j] > arr[j+1] {
                    arr.swapAt(j, j+1)
                }
            }
        }
        return arr
    }
}
