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
        #if false
        let dic = ["name":"lisi","class":"3"]
        for (key,value) in dic {
            print("\(key),\(value)")
        }
        dic.forEach{(key,value) in print("\(key),\(value)")}
        dic.map{print("\($0.0),\($0.1)")}
        #endif
        
        //MARK: 字典取值
        #if false
        let dic = ["name":"lisi","class":"3"]
        // 字典取值是可选值
        print(dic["name"] ?? "") // list
        print(dic["age"]) // nil
        #endif
        
        //MARK: 增删改
        var dic = ["name":"lisi","class":"3","book":"yuwen"]
        dic["name"] = "zhangsan"
        print(dic) //["class": "3", "name": "zhangsan", "book": "yuwen"]
        dic.updateValue("wangwu", forKey: "name")
        print(dic)//["class": "3", "name": "wangwu", "book": "yuwen"]
        dic["name"] = nil
        print(dic)//["class": "3", "book": "yuwen"]
        dic.removeValue(forKey:"book")
        print(dic)//["class": "3"]
    }
}
