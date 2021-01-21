//
//  LeetCode58.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给定一个仅包含大小写字母和空格 ' ' 的字符串 s，返回其最后一个单词的长度。如果字符串从左向右滚动显示，那么最后一个单词就是最后出现的单词。

 如果不存在最后一个单词，请返回 0 。

 说明：一个单词是指仅由字母组成、不包含任何空格字符的 最大子字符串。

  

 示例:

 输入: "Hello World"
 输出: 5
 通过次数153,079提交次数449,055

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/length-of-last-word
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution58 {
    func lengthOfLastWord(_ s: String) -> Int {
        /*
        var arr = s.split(separator:" ")
        if let str = arr.last {
            return str.count
        }
        return 0
        */
        /*
        var arr = Array(s)
        var count = arr.count
        var ans = 0
        var next = 0
        for i in arr {
            if i != " " {
                if next > 0 {
                    ans = 0
                    next = 0
                }
                ans += 1
            } else {
                next += 1
            }
        }
        return ans
        */
        /*
        var arr = Array(s)
        var ans = 0
        for i in arr.reversed() {
            if i != " " {
                ans += 1
            } else {
                if ans > 0 {
                    return ans
                }
            }
        }
        return ans
        */
        var arr = Array(s)
        var lastIndex = arr.count - 1
        var ans = 0
        while lastIndex >= 0 {
            if arr[lastIndex] != " " {
                ans += 1
            } else {
                if ans > 0 {
                    return ans
                }
            }
            lastIndex -= 1
        }
        return ans
    }
}
