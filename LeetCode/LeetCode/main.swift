//
//  main.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//

import Foundation
print(">>>>>>>>>>>>>>>>>>>>Start!<<<<<<<<<<<<<<<<<<<<<<<")

var a = 1234124
var b = String(a)
var arr = Array(b)
var arrI = arr.map{Int(String($0))!}

let handle = SetAbout()
handle.setHandle()

print(">>>>>>>>>>>>>>>>>>>>End!<<<<<<<<<<<<<<<<<<<<<<<")

