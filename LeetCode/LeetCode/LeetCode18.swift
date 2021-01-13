//
//  LeetCode18.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/13.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 小扣在秋日市集选择了一家早餐摊位，一维整型数组 staple 中记录了每种主食的价格，一维整型数组 drinks 中记录了每种饮料的价格。小扣的计划选择一份主食和一款饮料，且花费不超过 x 元。请返回小扣共有多少种购买方案。

 注意：答案需要以 1e9 + 7 (1000000007) 为底取模，如：计算初始结果为：1000000008，请返回 1

 示例 1：

 输入：staple = [10,20,5], drinks = [5,5,2], x = 15

 输出：6

 解释：小扣有 6 种购买方案，所选主食与所选饮料在数组中对应的下标分别是：
 第 1 种方案：staple[0] + drinks[0] = 10 + 5 = 15；
 第 2 种方案：staple[0] + drinks[1] = 10 + 5 = 15；
 第 3 种方案：staple[0] + drinks[2] = 10 + 2 = 12；
 第 4 种方案：staple[2] + drinks[0] = 5 + 5 = 10；
 第 5 种方案：staple[2] + drinks[1] = 5 + 5 = 10；
 第 6 种方案：staple[2] + drinks[2] = 5 + 2 = 7。

 示例 2：

 输入：staple = [2,1,1], drinks = [8,9,5,1], x = 9

 输出：8

 解释：小扣有 8 种购买方案，所选主食与所选饮料在数组中对应的下标分别是：
 第 1 种方案：staple[0] + drinks[2] = 2 + 5 = 7；
 第 2 种方案：staple[0] + drinks[3] = 2 + 1 = 3；
 第 3 种方案：staple[1] + drinks[0] = 1 + 8 = 9；
 第 4 种方案：staple[1] + drinks[2] = 1 + 5 = 6；
 第 5 种方案：staple[1] + drinks[3] = 1 + 1 = 2；
 第 6 种方案：staple[2] + drinks[0] = 1 + 8 = 9；
 第 7 种方案：staple[2] + drinks[2] = 1 + 5 = 6；
 第 8 种方案：staple[2] + drinks[3] = 1 + 1 = 2；

 提示：

 1 <= staple.length <= 10^5
 1 <= drinks.length <= 10^5
 1 <= staple[i],drinks[i] <= 10^5
 1 <= x <= 2*10^5
 通过次数11,194提交次数41,031

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/2vYnGI
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution18 {
    func breakfastNumber(_ staple: [Int], _ drinks: [Int], _ x: Int) -> Int {
        var ans = 0
        let sArr = staple.sorted()
        let dArr = drinks.sorted()
        var j = drinks.count - 1
        for s in sArr {
            while j >= 0 && s + dArr[j] > x {
                j -= 1
            }
            if j == -1 {
                break
            }
            ans += j + 1
        }
        return ans % 1000000007
    }
}
