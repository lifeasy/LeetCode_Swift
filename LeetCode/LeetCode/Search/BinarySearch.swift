//
//  BinarySearch.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/9.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class BinarySearch {
    // arr 有序int数组，target 查找的数 返回target下标，不存在时返回-1
    static func search(_ arr: [Int],_ target: Int) -> Int {
        var left = 0
        var right = arr.count - 1
        while left <= right {
            let mid = left + ((right - left)>>1)
            if arr[mid] == target {
                return mid
            } else if arr[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
    // 通过递归二分查找
    static func recursionSearch(_ arr: [Int],_ target: Int) -> Int {
        return self.recursion_search_c(arr, target, 0, arr.count - 1);
    }
    static func recursion_search_c(_ arr: [Int],_ target: Int,_ left:Int, _ right:Int) -> Int{
        let mid = left + ((right - left)>>1)
        while left <= right {
            if arr[mid] == target {
                return mid
            } else if arr[mid] > target {
                return self.recursion_search_c(arr, target, left, mid - 1)
            } else {
                return self.recursion_search_c(arr, target, mid + 1, right)
            }
        }
        return -1
    }
}
