//
//  LeetCode228.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/10.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给定一个无重复元素的有序整数数组 nums 。

 返回 恰好覆盖数组中所有数字 的 最小有序 区间范围列表。也就是说，nums 的每个元素都恰好被某个区间范围所覆盖，并且不存在属于某个范围但不属于 nums 的数字 x 。

 列表中的每个区间范围 [a,b] 应该按如下格式输出：

 "a->b" ，如果 a != b
 "a" ，如果 a == b
  

 示例 1：

 输入：nums = [0,1,2,4,5,7]
 输出：["0->2","4->5","7"]
 解释：区间范围是：
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"
 示例 2：

 输入：nums = [0,2,3,4,6,8,9]
 输出：["0","2->4","6","8->9"]
 解释：区间范围是：
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"
 示例 3：

 输入：nums = []
 输出：[]
 示例 4：

 输入：nums = [-1]
 输出：["-1"]
 示例 5：

 输入：nums = [0]
 输出：["0"]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/summary-ranges
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
// [0,2,3,4,6,8,9]
class Solution228 {
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.isEmpty {
            return []
        }
        var ret : [String] = []
        let count = nums.count
        var i = 0
        while i < count {
            let low = i
            while i + 1 < count && nums[i + 1] - nums[i] == 1 {
                i += 1
            }
            if i == low {
                ret.append("\(nums[i])")
            } else {
                ret.append("\(nums[low])->\(nums[i])")
            }
            i += 1
        }
        return ret
        
//        var result : [String] = []
//        let count = nums.count
//        if count == 0 {
//            return result
//        }
//        var startIndex = 0
//        var endIndex = 0
//        while endIndex+1 < count {
//            let nextIndex = endIndex + 1
//            if nums[nextIndex] - nums[endIndex] == 1 {
//                endIndex = nextIndex
//            } else {
//                if startIndex == endIndex {
//                    result.append("\(nums[startIndex])")
//                } else {
//                    result.append("\(nums[startIndex])->\(nums[endIndex])")
//                }
//                startIndex = nextIndex
//                endIndex = nextIndex
//            }
//        }
//        if startIndex == endIndex {
//            result.append("\(nums[startIndex])")
//        } else {
//            result.append("\(nums[startIndex])->\(nums[endIndex])")
//        }
//        return result
    }
}
