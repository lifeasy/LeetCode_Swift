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
        #if true
        // 
        #endif
    }
}
