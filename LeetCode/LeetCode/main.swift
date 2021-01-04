//
//  main.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//

import Foundation

// 01
//let nums = [2, 7, 11, 15], target = 9
//
//let so01 = Solution_01()
//let result = so01.twoSum(nums, target)
//print("result : \(result)")

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
print("Hello, World!")

