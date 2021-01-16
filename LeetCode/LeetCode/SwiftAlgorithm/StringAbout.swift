//
//  StringAbout.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/16.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
// Swift中Stirng常见的操作

import Foundation

class StringAbout {
    func stringHandle() {
        //MARK: String基本数据类型转换
        // 1 基本数据类型转String 直接使用String的初始化方法进行转换
        #if false
        print(String("a")) // a
        print(String(1)) // 1
        print(String(1.5)) // 1.5
        print(String(false)) // false
        #endif
        // 2.String转基本数据类型
        #if false
        print(Character("a"))
        print(Int("1") ?? -1)
        print(Double("1.34") ?? 0.0)
        print(Bool("false") ?? -1)
        #endif
        // 3. String与ASCII的相互转化 比如 97->a a->97
        // 3.1 字符串转ASCII数组 unicodeScalars
        #if false
        let str = "abcdef"
        let arr = str.unicodeScalars
        for i in arr {
            print(i.value) //97 98 99 100 101 102
        }
        #endif
        // 3.2 单个字符与ASCII互转
        #if false
        let a : Character = "a"
        print(a.unicodeScalars.first?.value ?? 0)
        
        let b : Character = Character(UnicodeScalar(97))
        print(b)
        #endif
        
        //MARK: String和数组
        // 一、数组转Stirng
        //1, 如果是字符串数组，可使用数组的join方法
        #if false
        let arr1 : [String] = ["1","23","45"]
        let str1 = arr1.joined()
        print(str1)
        #endif
        //2. 如果是字符数组，可以使用字符串的字符数组初始化方法
        #if false
        let arr2 : [Character] = ["1","2","5"]
        let str2 = String(arr2)
        print(str2)
        #endif
        //3. 如果是其他类型 比如 Int 或者 Double
        #if false
        let arr3 = [1,3,4]
        let str3 = arr3.reduce(""){
            $0 + String($1)
        }
        #endif
        // 二、字符串转字符数组 [Character]
        #if false
        let str = "abcde"
        let arr = Array(str)
        print(arr)
        #endif
        //MARK: String 与 集合 可以用来过滤String中的重复字符
        // 一 集合转String 类似数组操作 注意无序
        #if false
        let set : Set<Character> = ["a","b","c","a","c"]
        let str = String(set)
        print(str)

        let set1 : Set<String> = ["1","2","3","哈哈","哈哈"]
        let str1 = set1.joined()
        print(str1)
        #endif
        // 二 String 转集合 可以去除重复字符
        #if false
        let str = "112233哈哈"
        let set = Set(str)
        print(set)
        #endif
        //MARK: 字符的操作
        #if false
        let c : Character = "c"
        print(c.uppercased())
        print(c.isUppercase)
        print(c.isLowercase)
        print(c.isLetter)
        print(c.isNumber)
        print(c.asciiValue ?? 0)
        #endif
        
        //MARK: 字符串的操作
        #if false
        // 字符串格式化
        let str = String(format: "%d个哈哈", 15)
        print(str)
        // 访问字符串
        var str1 = "abcdefg"
        print(str1[str1.startIndex])
        print(str1[str1.index(before: str1.endIndex)])
        // 删除
        str1.removeFirst()
        print(str1)
        str1.remove(at: str1.index(str1.startIndex, offsetBy: 1))
        print(str1)
        str1.removeLast()
        print(str1)
        str1.removeFirst(2)
        print(str1)
        str1.removeLast(2)
        print(str1)
        str1 = "Hello World"
        str1.removeSubrange(str1.index(after: str1.startIndex)...str1.index(str1.startIndex, offsetBy: 3))
        print(str1)
        if let range = str1.range(of: "orl") {
            str1.removeSubrange(range)
        }
        print(str1)
        #endif
        
        #if false
        // 字符串比较
        let str1 = "bbc"
        let str2 = "adbc"
        let compare = str1.compare(str2)
        print(compare.rawValue)
        #endif
        
        #if false
        // 字符串包含
        let str1 = "Hello"
        let str2 = "Hello World"
        if str2.contains(str1) {
            print("contains")
        }
        #endif
        
        #if false
        // 字符串分割
        let str1 = "Hello World"
        let ret = str1.split(separator: " ")
        print(ret)
        #endif
        
        // 字符串 截取子串
        #if false
        let str1 = "Hello World"
        // 截取头部
        print(str1.prefix(2))
        // 截取尾部
        print(str1.suffix(2))
        // 截取指定index
        print(str1[str1.index(str1.startIndex, offsetBy: 2)...str1.index(str1.startIndex, offsetBy: 5)])
        // 指定range
        let range = str1.range(of: "llo W")
        if let r = range {
            print(str1[r.lowerBound..<r.upperBound])
        }
        #endif
        
        //MARK: 字符串替换
        #if false
        let str1 = "Hello World"
        let str2 = str1.replacingOccurrences(of:"He",with:"St")
        print(str2)
        #endif
        
        //MARK: 字符串插入
        #if false
        var str1 = "Hello World"
        str1.insert("A", at: str1.startIndex)
        print(str1)
        str1.insert(contentsOf:"666",at: str1.endIndex)
        print(str1)
        #endif
    }
}
