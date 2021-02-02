//
//  LeetCode20.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/2.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/valid-parentheses/
 20. 有效的括号
 */

import Foundation

class Solution20 {
    func isValid(_ s: String) -> Bool {
        var tmp : [Character] = []
        for character in s {
            if character == "(" || character == "{" || character == "[" {
                tmp.append(character)
            } else {
                if character == ")" && tmp.last == "(" {
                    tmp.removeLast()
                }
                else if character == "}" && tmp.last == "{" {
                    tmp.removeLast()
                }
                else if character == "]" && tmp.last == "[" {
                    tmp.removeLast()
                } else {
                    return false
                }
            }
        }
        return tmp.isEmpty
    }
}
