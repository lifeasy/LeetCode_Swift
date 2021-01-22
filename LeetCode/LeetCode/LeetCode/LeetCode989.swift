//
//  LeetCode989.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/23.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 对于非负整数 X 而言，X 的数组形式是每位数字按从左到右的顺序形成的数组。例如，如果 X = 1231，那么其数组形式为 [1,2,3,1]。

 给定非负整数 X 的数组形式 A，返回整数 X+K 的数组形式。

  

 示例 1：

 输入：A = [1,2,0,0], K = 34
 输出：[1,2,3,4]
 解释：1200 + 34 = 1234
 示例 2：

 输入：A = [2,7,4], K = 181
 输出：[4,5,5]
 解释：274 + 181 = 455
 示例 3：

 输入：A = [2,1,5], K = 806
 输出：[1,0,2,1]
 解释：215 + 806 = 1021
 示例 4：

 输入：A = [9,9,9,9,9,9,9,9,9,9], K = 1
 输出：[1,0,0,0,0,0,0,0,0,0,0]
 解释：9999999999 + 1 = 10000000000
  

 提示：

 1 <= A.length <= 10000
 0 <= A[i] <= 9
 0 <= K <= 10000
 如果 A.length > 1，那么 A[0] != 0
 通过次数40,843提交次数85,280

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-to-array-form-of-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution989 {
    func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
        let arrK = Array(String(K)).map{Int(String($0))!}
        let countA = A.count
        let countK = arrK.count
        let maxCount = max(countA,countK)+1
        var ans = Array(repeating:0,count:maxCount)
        var index = 1
        while maxCount - index >= 0 {
            var ret0 = ans[maxCount - index]
            var ret1 = 0
            if countA - index >= 0 {
                ret0 = A[countA - index] + ret0
            }
            if countK - index >= 0 {
                ret0 = ret0 + arrK[countK - index]
            }
            if ret0 > 9 {
                ret0 = ret0 % 10
                ret1 = 1
            }
            ans[maxCount-index] = ret0
            if ret1 == 1 {
                ans[maxCount-index-1] = ret1
            }
            index += 1
        }
        if ans.first == 0 {
            ans.removeFirst()
        }
        return ans
    }
}
