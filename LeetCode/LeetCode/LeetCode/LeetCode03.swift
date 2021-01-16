//
//  LeetCode03.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//
// 3. 无重复字符的最长子串
// 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
// 输入: "abcabcbb"
// 输出: 3
// 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。

import Foundation

class Solution03 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxStr = String()
        var currStr = String()
        for char in s {
            while currStr.contains(char) {
                currStr.removeFirst()
            }
            currStr.append(char)
            if currStr.count > maxStr.count {
                maxStr = currStr
            }
        }
        return maxStr.count
    }
}
