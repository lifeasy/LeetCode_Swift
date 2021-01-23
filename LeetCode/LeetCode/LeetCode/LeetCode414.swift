//
//  LeetCode414.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/23.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给你一个非空数组，返回此数组中 第三大的数 。如果不存在，则返回数组中最大的数。

  

 示例 1：

 输入：[3, 2, 1]
 输出：1
 解释：第三大的数是 1 。
 示例 2：

 输入：[1, 2]
 输出：2
 解释：第三大的数不存在, 所以返回最大的数 2 。
 示例 3：

 输入：[2, 2, 3, 1]
 输出：1
 解释：注意，要求返回第三大的数，是指第三大且唯一出现的数。
 存在两个值为2的数，它们都排第二。
  

 提示：

 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  

 进阶：你能设计一个时间复杂度 O(n) 的解决方案吗？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/third-maximum-number
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
class Solution414 {
    func thirdMax(_ nums: [Int]) -> Int {
        var i = Int.min, j = Int.min, k = Int.min
        for num in nums {
            if num == i || num == j || num == k {
                    break
                }
            if num >= i {
                k = j
                j = i
                i = num
            } else if num >= j {
                k = j
                j = num
            } else if num >= k {
                k = num
            }
        }
        if k == Int.min {
            return i
        }
        return k
    }
}
