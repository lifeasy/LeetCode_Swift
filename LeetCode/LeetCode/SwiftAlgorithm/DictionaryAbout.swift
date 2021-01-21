//
//  DictionaryAbout.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/20.
//  Copyright © 2021 liangqili.com. All rights reserved.
// Swift中字典的常用操作

import Foundation

class DictionaryAbout {
    func dictionaryHandle() {
        //MARK: 初始化
        #if false
        let dic : Dictionary<String,Int> = [:]
        let dic1 : [String : Int] = [:]
        let dic2 = [String : Int]()
        var dic3 = Dictionary<String,Int>()
        #endif
        
        //MARK: 常用属性
        #if false
        let dic = [String:Int]()
        print(dic.isEmpty) // true
        print(dic.count) // 0
        #endif
        
        //MARK: 所有keys values
        #if false
        let dic = ["name":"lisi","class":"3"]
        print(dic.keys) // ["name", "class"]
        print(dic.values) // ["lisi", "3"]
        #endif
        
        //MARK: 遍历 遍历的输入是一个元组
        let dic = ["name":"lisi","class":"3"]
        for (key,value) in dic {
            print("\(key),\(value)")
        }
        dic.forEach{(key,value) in print("\(key),\(value)")}
        dic.map{print("\($0.0),\($0.1)")}
        
        
    }
}
