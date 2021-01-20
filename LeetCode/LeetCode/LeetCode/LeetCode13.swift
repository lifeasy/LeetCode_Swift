//
//  LeetCode13.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/11.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 13. 罗马数字转整数
 罗马数字包含以下七种字符: I， V， X， L，C，D 和 M。

 字符          数值
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 例如， 罗马数字 2 写做 II ，即为两个并列的 1。12 写做 XII ，即为 X + II 。 27 写做  XXVII, 即为 XX + V + II 。

 通常情况下，罗马数字中小的数字在大的数字的右边。但也存在特例，例如 4 不写做 IIII，而是 IV。数字 1 在数字 5 的左边，所表示的数等于大数 5 减小数 1 得到的数值 4 。同样地，数字 9 表示为 IX。这个特殊的规则只适用于以下六种情况：

 I 可以放在 V (5) 和 X (10) 的左边，来表示 4 和 9。
 X 可以放在 L (50) 和 C (100) 的左边，来表示 40 和 90。
 C 可以放在 D (500) 和 M (1000) 的左边，来表示 400 和 900。
 给定一个罗马数字，将其转换成整数。输入确保在 1 到 3999 的范围内。

  

 示例 1:

 输入: "III"
 输出: 3
 示例 2:

 输入: "IV"
 输出: 4
 示例 3:

 输入: "IX"
 输出: 9
 示例 4:

 输入: "LVIII"
 输出: 58
 解释: L = 50, V= 5, III = 3.
 示例 5:

 输入: "MCMXCIV"
 输出: 1994
 解释: M = 1000, CM = 900, XC = 90, IV = 4.
  

 提示：

 题目所给测试用例皆符合罗马数字书写规则，不会出现跨位等情况。
 IC 和 IM 这样的例子并不符合题目要求，49 应该写作 XLIX，999 应该写作 CMXCIX 。
 关于罗马数字的详尽书写规则，可以参考 罗马数字 - Mathematics 。
 通过次数305,071提交次数489,492
 */

import Foundation

class Solution13 {
    func romanToInt(_ s: String) -> Int {
        let single : [Character : Int] = ["I" : 1, "V" :  5,"X" : 10, "L" : 50, "C" : 100 , "D" : 500, "M" : 1000]
        var stack = [Int]()
        for character in s {
            let num = single[character]!
            if stack.isEmpty {
                stack.append(num)
            } else {
                let lastIndex = stack.count - 1
                let lastNum = stack[lastIndex]
                if lastNum == num {
                    stack[lastIndex] = 2 * num
                } else if lastNum < num {
                    stack[lastIndex] = num - lastNum
                } else {
                    stack.append(num)
                }
            }
        }
//        var ret = 0
//        for num in stack {
//            ret += num
//        }
        return stack.reduce(0){$0+$1}
        
        /*
        if s.isEmpty {
            return 0
        }
        let count = s.count
        let single : [Character : Int] = ["I" : 1, "V" :  5,"X" : 10, "L" : 50, "C" : 100 , "D" : 500, "M" : 1000]
        if count == 1 {
            return single[s[s.startIndex]]!
        }
        var i = 0
        var ret = 0
        while i < count {
            let str1 = s[s.index(s.startIndex, offsetBy: i)]
            let num1 = single[str1]!
            if i + 1 < count {
                let str2 = s[s.index(s.startIndex, offsetBy: i + 1)]
                let num2 = single[str2]!
                if num2 == num1 {
                    ret += (num1+num2)
                    i += 2
                } else if num1 < num2 {
                    ret += (num2 - num1)
                    i += 2
                } else {
                    ret += num1
                    i += 1
                }
            } else {
                ret += num1
                i += 1
            }
        }
        return ret
         */
    }
}