//
//  Demo.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/29.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class Demo {
    func test() {
        // 访问 字符串 编码
        let s = "Dog‼🐶"
        // ascii
        for i in s {
            print(i.asciiValue ?? "none") // 可选值
        }
        /**
         68
         111
         103
         none
         none
         */
        // utf8 可变长编码 一个字符可能由多个UInt8构成
        for i in s.utf8 {
            print(i)
        }
        /**
         68
         111
         103
         226
         128
         188
         240
         159
         144
         182
         */
        // UTF-16 一个字符可能由多个UInt16构成
        for i in s.utf16 {
            print(i)
        }
        /**
         68
         111
         103
         8252
         55357
         56374
         */
        // Unicode 标量表示 .value表示数值
        for i in s.unicodeScalars {
            print(i.value)
        }
        /**
         68
         111
         103
         8252
         128054
         */
    }
}
