//
//  LeetCode1128.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/27.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给你一个由一些多米诺骨牌组成的列表 dominoes。

 如果其中某一张多米诺骨牌可以通过旋转 0 度或 180 度得到另一张多米诺骨牌，我们就认为这两张牌是等价的。

 形式上，dominoes[i] = [a, b] 和 dominoes[j] = [c, d] 等价的前提是 a==c 且 b==d，或是 a==d 且 b==c。

 在 0 <= i < j < dominoes.length 的前提下，找出满足 dominoes[i] 和 dominoes[j] 等价的骨牌对 (i, j) 的数量。

  

 示例：

 输入：dominoes = [[1,2],[2,1],[3,4],[5,6]]
 输出：1
  

 提示：

 1 <= dominoes.length <= 40000
 1 <= dominoes[i][j] <= 9

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/number-of-equivalent-domino-pairs
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution1128 {
    func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
        let count = dominoes.count
        var ans = 0
        var container = Array(repeating:0,count:100)
        for i in 0..<count {
            let item = dominoes[i]
            let val = item[1] > item[0] ? 10 * item[1] + item[0] : 10 * item[0] + item[1]
            // 这里累加计算有几对很巧妙
            ans += container[val]
            container[val] += 1
        }
        return ans
    }
}
