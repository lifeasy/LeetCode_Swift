//
//  BinarySearch.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/9.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation
// 这里默认升序
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
    // 查找第一个值等于给定值的元素 返回元素的index
    static func firstEqualSearch(_ arr: [Int],_ target: Int) -> Int {
        var left = 0, right = arr.count - 1
        while left <= right {
            let mid = left + ((right - left)>>1)
            if arr[mid] >= target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        if left < arr.count && arr[left] == target {
            return left
        }
        return -1;
    }
    // 推荐易懂版本
    static func firstEqualSearch2(_ arr: [Int],_ target: Int) -> Int {
        var left = 0, right = arr.count - 1
        while left <= right {
            let mid = left + ((right - left)>>1)
            if arr[mid] > target {
                right = mid - 1
            } else if arr[mid] < target {
                left = mid + 1
            } else {
                if mid == 0 || arr[mid - 1] != target {
                    return mid
                }
                right = mid - 1
            }
        }
        return -1;
    }
    // 查找第一个值等于给定值的元素 返回元素的index
    static func lastEqualSearch2(_ arr: [Int],_ target: Int) -> Int {
        var left = 0, right = arr.count - 1
        let count = arr.count
        while left <= right {
            let mid = left + ((right - left)>>1)
            if arr[mid] > target {
                right = mid - 1
            } else if arr[mid] < target {
                left = mid + 1
            } else {
                if mid == count - 1 || arr[mid + 1] != target {
                    return mid
                }
                left = mid + 1
            }
        }
        return -1;
    }
    // 查找第一个大于等于给定值的元素
    static func firstGreatThanSearch(_ arr:[Int], _ target: Int) -> Int {
        let count = arr.count
        var left = 0, right = count - 1
        while left <= right {
            let mid = left + ((right - left)>>1)
            if arr[mid] >= target {
                if mid == 0 || arr[mid - 1] < target {
                    return mid
                }
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
    // 查找最后一个小于等于给定值的元素
    static func lastLessThanSearch(_ arr:[Int], _ target: Int) -> Int {
        let count = arr.count
        var left = 0, right = count - 1
        while left <= right {
            let mid = left + ((right - left)>>1)
            if arr[mid] <= target {
                if mid == count - 1 || arr[mid + 1] > target {
                    return mid
                }
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return -1
    }
}
