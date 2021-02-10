//
//  LeetCode33.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/11.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/search-in-rotated-sorted-array/
 33. 搜索旋转排序数组
 */

import Foundation

class Solution33 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let count = nums.count
        // 查找中间螺旋点 小于前面元素
        var seperateIndex = 0
        var index = 1
        while index < count {
            if nums[index] < nums[index - 1] {
                seperateIndex = index
                break
            }
            index += 1
        }
        if seperateIndex == 0 {
            var left = 0, right = count - 1
            while left <= right {
                let mid = left + ((right - left)>>1)
                if nums[mid] == target {
                    return mid
                } else if nums[mid] < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        } else {
            if target > nums[seperateIndex - 1] {
                return -1
            }
            // seperate...count-1
            if target <= nums[count - 1] {
                var left = seperateIndex, right = count - 1
                while left <= right {
                    let mid = left + ((right - left)>>1)
                    if nums[mid] == target {
                        return mid
                    } else if nums[mid] < target {
                        left = mid + 1
                    } else {
                        right = mid - 1
                    }
                }
            } else {
                // 0...seperate
                var left = 0, right = seperateIndex - 1
                while left <= right {
                    let mid = left + ((right - left)>>1)
                    if nums[mid] == target {
                        return mid
                    } else if nums[mid] < target {
                        left = mid + 1
                    } else {
                        right = mid - 1
                    }
                }
            }
        }
        return -1
    }
}
