//
//  SetAbout.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/21.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
// Swift中集合的常用操作
// 去重

import Foundation

class SetAbout {
    func setHandle() {
        //MARK: 初始化
        #if false
        let set1 : Set<String> = ["1","2","2","3"]
        print(set1) // ["3", "1", "2"]
        // 从序列初始化（数组、字符串等）
        let set2 = Set(["1","2","2","3"])
        print(set2)
        #endif
        
        //MARK: 常用方法
        #if false
        var set : Set<String> = ["1","2","2","3","哈哈","呵呵","🌶"]
        print(set.isEmpty)
        print(set.count)
        print(set.contains("🌶"))
        print(set.max()!,set.min()!)
        for value in set {
            print(value)
        }
        // 插入
        set.insert("😴")
        print(set)
        set.remove("2")
        print(set)
        #endif
        
        //MARK: 交集 并集 补集 差集
        var set1 : Set<String> = ["1","2","2","3","哈哈","呵呵","🌶"]
        var set2 : Set<String> = ["1","7","2","3","嘻嘻","呵呵","☺"]
        
        // 交集
        print(set1.intersection(set2)) //["呵呵", "2", "3", "1"]
        // 并集
        print(set1.union(set2)) //["7", "哈哈", "3", "☺", "呵呵", "🌶", "1", "嘻嘻", "2"]
        // 补集 set1中有而set2中没有的
        print(set1.subtracting(set2)) // ["哈哈", "🌶"]
        // 差集 并集-交集=差集 相互没有的
        print(set1.symmetricDifference(set2))
        
        
        
    }
}

