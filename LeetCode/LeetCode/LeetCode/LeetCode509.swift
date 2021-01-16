//
//  LeetCode509.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/4.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 斐波那契数，通常用 F(n) 表示，形成的序列称为 斐波那契数列 。该数列由 0 和 1 开始，后面的每一项数字都是前面两项数字的和。也就是：

 F(0) = 0，F(1) = 1
 F(n) = F(n - 1) + F(n - 2)，其中 n > 1
 给你 n ，请计算 F(n) 。

  

 示例 1：

 输入：2
 输出：1
 解释：F(2) = F(1) + F(0) = 1 + 0 = 1
 示例 2：

 输入：3
 输出：2
 解释：F(3) = F(2) + F(1) = 1 + 1 = 2
 示例 3：

 输入：4
 输出：3
 解释：F(4) = F(3) + F(2) = 2 + 1 = 3
  

 提示：

 0 <= n <= 30

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fibonacci-number
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution509_1 {
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        return fib(n-1)+fib(n-2)
    }
}
class Solution509_2 {
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        var p = 0, q = 1, r = 1
        var index = 3
        while index <= n {
            p = q
            q = r
            r = p + q
            index += 1
        }
        return r
    }
}
class Solution509_3 {
    func fib(_ n: Int) -> Int {
        var arr = Array(repeating: -1, count: 31)
        arr[0] = 0
        arr[1] = 1
        return self.calc(n,&arr)
    }
    func calc(_ n: Int, _ arr: inout Array<Int>) -> Int {
        if arr[n] >= 0 {
            return arr[n]
        }
        let ret = self.calc(n-1, &arr) + self.calc(n-2, &arr)
        arr[n] = ret
        return ret
    }
    
}

/**
 func printTime(_ n : Int) {
     let slu = Solution509_1()
     let start = CFAbsoluteTimeGetCurrent()
     let ret1 = slu.fib(n)
     let end1 = CFAbsoluteTimeGetCurrent() - start
     let str = String(format: "%f", end1)
     print("\(ret1) & \(str)")
 }
 func printTime2(_ n : Int) {
     let slu = Solution509_2()
     let start = CFAbsoluteTimeGetCurrent()
     let ret1 = slu.fib(n)
     let end1 = CFAbsoluteTimeGetCurrent() - start
     let str = String(format: "%f", end1)
     print("\(ret1) & \(str)")
 }
 func printTime3(_ n : Int) {
     let slu = Solution509_3()
     let start = CFAbsoluteTimeGetCurrent()
     let ret1 = slu.fib(n)
     let end1 = CFAbsoluteTimeGetCurrent() - start
     let str = String(format: "%f", end1)
     print("\(ret1) & \(str)")
 }
 printTime(30)
 printTime2(30)
 printTime3(30)
 */

