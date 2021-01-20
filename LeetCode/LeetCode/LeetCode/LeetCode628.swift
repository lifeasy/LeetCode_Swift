//
//  LeetCode628.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给你一个整型数组 nums ，在数组中找出由三个数组成的最大乘积，并输出这个乘积。

 示例 1：

 输入：nums = [1,2,3]
 输出：6
 示例 2：

 输入：nums = [1,2,3,4]
 输出：24
 示例 3：

 输入：nums = [-1,-2,-3]
 输出：-6

 提示：

 3 <= nums.length <= 104
 -1000 <= nums[i] <= 1000
 通过次数61,709提交次数118,807

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/maximum-product-of-three-numbers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
class Solution628 {
    func maximumProduct(_ nums: [Int]) -> Int {
        // 解二 遍历，找出最小两个值和最大三个值
        var a = Int.max, b = Int.max, c = Int.min, d = Int.min, e = Int.min
        for i in nums {
            if i > c {
                if i > e {
                    c = d
                    d = e
                    e = i
                } else if i > d {
                    c = d
                    d = i
                } else {
                    c = i
                }
            }
            if i < b {
                if i < a {
                    b = a
                    a = i
                } else {
                    b = i
                }
            }
        }
        return max(a * b * e, c * d * e)
        /* 排序
         let count = nums.count
         let arr = nums.sorted{$0<$1}
         // 全是负数 或者 全是正数
         let ans1 = arr[count - 1]*arr[count - 2]*arr[count - 3]
         let ans2 = arr[0]*arr[1]*arr[count-1]
         return max(ans1,ans2)
         // if arr[count - 1] <= 0 || arr[0] >=0 {
         //     return arr[count - 1]*arr[count - 2]*arr[count - 3]
         // } else {
         //     // 有正有负 最大值为 两个最小负数乘积*最大正数和三个最大正数乘积之间的最大值
         // }
          */
    }
}
