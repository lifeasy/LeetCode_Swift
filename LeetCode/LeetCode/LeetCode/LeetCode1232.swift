//
//  LeetCode1232.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/17.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 在一个 XY 坐标系中有一些点，我们用数组 coordinates 来分别记录它们的坐标，其中 coordinates[i] = [x, y] 表示横坐标为 x、纵坐标为 y 的点。

 请你来判断，这些点是否在该坐标系中属于同一条直线上，是则返回 true，否则请返回 false。

  

 示例 1：



 输入：coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
 输出：true
 示例 2：



 输入：coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
 输出：false
  

 提示：

 2 <= coordinates.length <= 1000
 coordinates[i].length == 2
 -10^4 <= coordinates[i][0], coordinates[i][1] <= 10^4
 coordinates 中不含重复的点

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/check-if-it-is-a-straight-line
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation
class Solution1232 {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        if coordinates.count == 2 {
            return true
        }
        let x2 = coordinates[1][0]
        let x1 = coordinates[0][0]
        let y2 = coordinates[1][1]
        let y1 = coordinates[0][1]
        // 垂直x轴 判断所有 x 相等
        if x2 == x1 {
            for index in 2..<coordinates.count {
                if coordinates[index][0] != x1 {
                    return false
                }
            }
        } else if y2 == y1 {// 垂直于y轴 判断所有y相等
            for index in 2..<coordinates.count {
                if coordinates[index][1] != y1 {
                    return false
                }
            }
        } else {
            //  y = kx + t  k (x2 - x1) = (y2 - y1) 根据前两个点求出斜率k和t
            let k = Double(y2 - y1) / Double(x2 - x1)
            let t = Double(y1) - k * Double(x1)
            for index in 2..<coordinates.count {
                if Double(coordinates[index][1]) != k * Double(coordinates[index][0]) + t {
                return false
                }
            }
        }
        return true
    }
}
