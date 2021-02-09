//
//  main.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//

import Foundation
print(">>>>>>>>>>>>>>>>>>>>Start!<<<<<<<<<<<<<<<<<<<<<<<")


var arr = [1,3,5,7,8,11,13,16,19,23,45,98,299,1145]
//MySort.quickSort(&arr)
let ans = BinarySearch.recursionSearch(arr, 45)
print(ans)
print(">>>>>>>>>>>>>>>>>>>>End!<<<<<<<<<<<<<<<<<<<<<<<")

