//
//  LeetCode141.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/2.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/linked-list-cycle/
 141. 环形链表
 */

import Foundation

class Solution141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return true
            }
        }
        return false
    }
}
