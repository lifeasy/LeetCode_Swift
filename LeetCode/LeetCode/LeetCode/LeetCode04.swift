//
//  LeetCode04.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//
//4. 寻找两个正序数组的中位数
//给定两个大小为 m 和 n 的正序（从小到大）数组 nums1 和 nums2。
//
//请你找出这两个正序数组的中位数，并且要求算法的时间复杂度为 O(log(m + n))。
//
//你可以假设 nums1 和 nums2 不会同时为空。
//
//nums1 = [1, 3]
//nums2 = [2]
//
//则中位数是 2.0
//
//nums1 = [1, 2]
//nums2 = [3, 4]
//
//则中位数是 (2 + 3)/2 = 2.5

import Foundation

// 二分查找中线
class Solution04_1 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var p = nums1
        var q = nums2
        if p.count > q.count {
            p = nums2
            q = nums1
        }
        
        let pC = p.count
        let qC = q.count
        
        var left = 0
        var right = pC
        
        while left <= right {
            let pM = (left + right) / 2 // A的中线位置
            let qM = (pC + qC + 1) / 2 - pM // B的中线位置 起始位 总长度的一半
            
            let maxLeftX = pM == 0 ? Int.min : p[pM - 1]
            let minRightX = pM == pC ? Int.max : p[pM]
            
            let maxLeftY = qM == 0 ? Int.min : q[qM - 1]
            let minRightY = qM == qC ? Int.max : q[qM]
            
            if maxLeftX <= minRightY && minRightX >= maxLeftY  { //找到了
                if ((pC + qC) % 2) == 0 {
                    let v1 = Double(max(maxLeftX, maxLeftY))
                    let v2 = Double(min(minRightX, minRightY))
                    return (v1 + v2) / 2
                } else {
                    return Double(max(maxLeftX, maxLeftY))
                }
            } else if (maxLeftX > minRightY) {
                right = pM - 1
            } else {
              left = pM + 1
            }
        }
        return Double(-1.0)
    }
}

// 第k小数
class Solution04_2 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let lenght_n = nums1.count
        let lenght_m = nums2.count
        
        let left = (lenght_n + lenght_m + 1) / 2
        let right = (lenght_n + lenght_m + 2) / 2
        
        
        return Double((getKthNumber(nums1, 0, lenght_n - 1, nums2, 0, lenght_m - 1, left) + getKthNumber(nums1, 0, lenght_n - 1, nums2, 0, lenght_m - 1, right))) / 2.0
    }
    
    func getKthNumber(_ nums1: [Int], _ start1: Int, _ end1: Int, _ nums2: [Int],  _ start2: Int, _ end2: Int, _ k: Int) -> Int {
        let len1 = end1 - start1 + 1;
        let len2 = end2 - start2 + 1;
        
        //保证num1的长度小于num2的长度，这样就能保证如果有数组空了，一定是num1
        if len1 > len2 {
            return getKthNumber(nums2, start2, end2, nums1, start1, end1, k)
        }
        
        //len == 0, 中位数就是nums2的中位数
        if len1 == 0 {
            return nums2[start2 + k - 1]
        }
        
        //k == 1相当于查找最小值（合并后）
        if k == 1 {
            return min(nums1[start1], nums2[start2])
        }
        
        //i,j分别是数组根据k/2计算的下标
        let i = start1 + min(len1, k/2) - 1
        let j = start2 + min(len2, k/2) - 1
        
        if nums1[i] > nums2[j] {
            //偏移nums2的start，相当于去除之前的元素，同时k值更新，减去去除的元素个数
            return getKthNumber(nums1, start1, end1, nums2, j+1, end2, k - (j - start2 + 1))
        }else{
            //偏移nums1的start，相当于去除之前的元素，同时k值更新，减去去除的元素个数
            return getKthNumber(nums1, i+1, end1, nums2, start2, end2, k - (i - start1 + 1))
        }
    }
}

// 暴力查找
class Solution04_3 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var arr = nums1 + nums2
        arr.sort()
        
        let count = arr.count
        if count%2 == 0 {
            let m = count/2
            let n = m-1
            let result:Double = Double(arr[m] + arr[n])
            return result/2
        }else{
            let m = count/2
            return Double(arr[m])
        }
    }
}
