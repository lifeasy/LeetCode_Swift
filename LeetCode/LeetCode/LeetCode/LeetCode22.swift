//
//  LeetCode22.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/19.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 小扣注意到秋日市集上有一个创作黑白方格画的摊位。摊主给每个顾客提供一个固定在墙上的白色画板，画板不能转动。画板上有 n * n 的网格。绘画规则为，小扣可以选择任意多行以及任意多列的格子涂成黑色，所选行数、列数均可为 0。

 小扣希望最终的成品上需要有 k 个黑色格子，请返回小扣共有多少种涂色方案。

 注意：两个方案中任意一个相同位置的格子颜色不同，就视为不同的方案。

 示例 1：

 输入：n = 2, k = 2

 输出：4

 解释：一共有四种不同的方案：
 第一种方案：涂第一列；
 第二种方案：涂第二列；
 第三种方案：涂第一行；
 第四种方案：涂第二行。

 示例 2：

 输入：n = 2, k = 1

 输出：0

 解释：不可行，因为第一次涂色至少会涂两个黑格。

 示例 3：

 输入：n = 2, k = 4

 输出：1

 解释：共有 2*2=4 个格子，仅有一种涂色方案。

 限制：

 1 <= n <= 6
 0 <= k <= n * n
 通过次数5,225提交次数16,383

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/ccw6C7
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
class Solution22 {
    func paintingPlan(_ n: Int, _ k: Int) -> Int {
        if k == 0 {
            return 1
        }
        guard k >= n else {
            return 0
        }
        if k == n * n {
            return 1
        }
        var ans = 0
        for i in 0..<n {
            for j in 0..<n {
                if (i + j) * n - (i * j) == k {
                    ans += choose(n,i)*choose(n,j)
                }
            }
        }
        return ans
    }
    func choose(_ n: Int, _ m: Int)->Int {
        return factorial(n)/(factorial(m)*factorial(n-m));
    }
    func factorial(_ n: Int)->Int {
        if n == 0 {
            return 1
        }
        return n * factorial(n-1)
    }
}
