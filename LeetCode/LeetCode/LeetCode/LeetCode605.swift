//
//  LeetCode605.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/28.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 假设有一个很长的花坛，一部分地块种植了花，另一部分却没有。可是，花不能种植在相邻的地块上，它们会争夺水源，两者都会死去。

 给你一个整数数组  flowerbed 表示花坛，由若干 0 和 1 组成，其中 0 表示没种植花，1 表示种植了花。另有一个数 n ，能否在不打破种植规则的情况下种入 n 朵花？能则返回 true ，不能则返回 false。

  

 示例 1：

 输入：flowerbed = [1,0,0,0,1], n = 1
 输出：true
 示例 2：

 输入：flowerbed = [1,0,0,0,1], n = 2
 输出：false
  

 提示：

 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] 为 0 或 1
 flowerbed 中不存在相邻的两朵花
 0 <= n <= flowerbed.length


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/can-place-flowers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution605 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        let count = flowerbed.count
        if count == 1 {
            return 1 - flowerbed[0] >= n
        }
        if count % 2 == 0 {
            guard n <= count / 2 else {
                return false
            }
        } else {
            guard n <= count / 2 + 1 else {
                return false
            }
        }
        var arr = flowerbed
        var num = n
        if arr[0] == 0 && arr[1] == 0 {
            arr[0] = 1
            num -= 1
        }
        if arr[count-1] == 0 && arr[count-2] == 0 {
            arr[count-1] = 1
            num -= 1
        }
        var index = 1
        while index + 1 < count {
            if arr[index] == 0 {
                if arr[index-1] == 0 && arr[index+1] == 0 {
                    arr[index] = 1
                    num -= 1
                    if num <= 0 {
                        return true
                    }
                    index = index + 2
                } else {
                    index += 1
                }
            } else {
                index += 1
            }
        }
        return num <= 0
    }
}
