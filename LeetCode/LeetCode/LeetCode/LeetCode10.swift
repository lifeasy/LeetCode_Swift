//
//  LeetCode10.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/19.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 写一个函数，输入 n ，求斐波那契（Fibonacci）数列的第 n 项。斐波那契数列的定义如下：

 F(0) = 0,   F(1) = 1
 F(N) = F(N - 1) + F(N - 2), 其中 N > 1.
 斐波那契数列由 0 和 1 开始，之后的斐波那契数就是由之前的两数相加而得出。

 答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。

  

 示例 1：

 输入：n = 2
 输出：1
 示例 2：

 输入：n = 5
 输出：5
  

 提示：

 0 <= n <= 100
 通过次数107,268提交次数317,015

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fei-bo-na-qi-shu-lie-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution10 {
    func fib(_ n: Int) -> Int {
        var a = 0, b = 1, sum = 0
        for _ in 0..<n {
            sum = (a + b)%1000000007
            a = b;
            b = sum
        }
        return a
    }
}
