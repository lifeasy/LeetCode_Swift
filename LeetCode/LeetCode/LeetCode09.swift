//
//  LeetCode09.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/10.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。

 示例 1:

 输入: 121
 输出: true
 示例 2:

 输入: -121
 输出: false
 解释: 从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数。
 示例 3:

 输入: 10
 输出: false
 解释: 从右向左读, 为 01 。因此它不是一个回文数。
 进阶:

 你能不将整数转为字符串来解决这个问题吗？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/palindrome-number
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution09 {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        if x < 10 {
            return true
        }
        if x % 10 == 0 {
            return false
        }
        var num = x
        var num1 = 0
        while num > num1 {
            num1 = num1 * 10 + num % 10
            num = num / 10
        }
        if num == num1 || num1 / 10 == num {
            return true
        }
        return false
    }
}
