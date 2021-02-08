//
//  MySort.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/6.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class MySort {
    // 冒泡排序
    static func bubbleSort(_ arr:inout [Int]) {
        for i in 0..<arr.count-1 {
            for j in 0..<arr.count-i-1 {
                if arr[j] > arr[j+1] {
                    arr.swapAt(j, j+1)
                }
            }
        }
    }
    // 插入排序
    static func insertionSort(_ arr: inout [Int]) {
        if arr.count <= 1 {
            return
        }
        // 从第一个开始比较
        for i in 1..<arr.count {
            // 要插入的元素
            let value = arr[i]
            var j = i - 1
            // 移动元素 寻找插入位置
            while j >= 0 {
                if  arr[j] > value {
                    arr[j+1] = arr[j]
                } else {
                    break
                }
                j -= 1
            }
            arr[j+1] = value
        }
    }
    // 选择排序
    static func selectionSort(_ arr:inout [Int]) {
        for i in 0..<arr.count {
            var minIndex = i
            for j in i..<arr.count {
                if arr[j] < arr[minIndex] {
                    minIndex = j
                }
            }
            arr.swapAt(i, minIndex)
        }
    }
    // 归并排序
    static func mergeSort(_ arr:inout [Int]) {
        self.merge_sort_c(&arr, 0, arr.count - 1)
    }
    static func merge_sort_c(_ arr:inout [Int],_ startIndex: Int,_ endIndex:Int) {
        guard startIndex < endIndex else {
            return
        }
        let midIndex = (startIndex + endIndex) / 2
        merge_sort_c(&arr, startIndex, midIndex)
        merge_sort_c(&arr, midIndex + 1, endIndex)
        self.merge(&arr,startIndex,midIndex,endIndex)
    }
    static func merge(_ arr:inout [Int],_ startIndex: Int,_ midIndex: Int,_ endIndex:Int) {
        var i = startIndex, j = midIndex + 1, k = 0
        let count = endIndex - startIndex + 1
        var tmp = Array(repeating: 0, count: count)
        while i <= midIndex && j <= endIndex {
            if arr[i] <= arr[j] {
                tmp[k] = arr[i]
                i += 1
            } else {
                tmp[k] = arr[j]
                j += 1
            }
            k += 1
        }
        // 判断数组剩余
        var start = i, end = midIndex
        if j <= endIndex {
            start = j
            end = endIndex
        }
        // 将剩余的数据拷贝到临时数组tmp
        while start <= end {
            tmp[k] = arr[start]
            k += 1
            start += 1
        }
        // 将tmp中的数组拷贝回A[p...r]
        for index in 0..<count {
            arr[startIndex + index] = tmp[index]
        }
    }
    // 快速排序
    static func quickSort(_ arr:inout [Int]) {
        self.quick_sort_c(&arr, 0, arr.count - 1)
    }
    static func quick_sort_c(_ arr:inout [Int],_ startIndex:Int,_ endIndex:Int) {
        guard startIndex < endIndex else {
            return
        }
        let p = self.partition(&arr, startIndex, endIndex)
        quick_sort_c(&arr, startIndex, p - 1)
        quick_sort_c(&arr, p + 1, endIndex)
    }
    // 分区 并返回分区点
    // 最优解 交换 原地排序
    static func partition(_ arr:inout [Int],_ startIndex:Int,_ endIndex:Int) -> Int {
        var i = startIndex
        let pValue = arr[endIndex]
        for j in startIndex...endIndex {
            if arr[j] <= pValue {
                arr.swapAt(i, j)
                i += 1
            }
        }
        return i - 1
    }
    // 第一种分组方法，利用临时数组
    static func partition_1(_ arr:inout [Int],_ startIndex:Int,_ endIndex:Int) -> Int {
        var tmpLittle = [Int]()
        var tmpLarge = [Int]()
        let pValue = arr[endIndex]
        for i in startIndex..<endIndex {
            if arr[i] <= pValue {
                tmpLittle.append(arr[i])
            } else {
                tmpLarge.append(arr[i])
            }
        }
        let tmp = tmpLittle + [pValue] + tmpLarge
        for (index,value) in tmp.enumerated() {
            arr[startIndex + index] = value
        }
        return startIndex + tmpLittle.count
    }
    // 计数排序
    static func countingSort(_ arr:inout [Int]) {
        guard arr.count > 1 else {
            return
        }
        // 查找数据范围
        var max = arr[0]
        for i in arr {
            if max < i {
                max = i
            }
        }
        // 申请一个计数数组c，下标大小[0,max]
        var countingArr = Array(repeating:0,count:max+1)
        // 计算每个元素的个数，放入c中
        for i in arr {
            countingArr[i] = countingArr[i] + 1
        }
        //依次累加
        for i in 1..<countingArr.count {
            countingArr[i] = countingArr[i] + countingArr[i - 1]
        }
        // 申请临时数组r，存储排序之后的结果
        var tmp = Array(repeating: 0, count: arr.count)
        // 根据计数数组，将数据放入tmp中
        var index = arr.count - 1
        while index >= 0 {
            tmp[countingArr[arr[index]] - 1] = arr[index]
            countingArr[arr[index]] = countingArr[arr[index]] - 1
            index -= 1
        }
        // 遍历tmp，将元素放入arr中
        for (index,value) in tmp.enumerated() {
            arr[index] = value
        }
    }
}
