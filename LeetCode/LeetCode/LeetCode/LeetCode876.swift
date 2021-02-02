//
//  LeetCode879.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/2.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/middle-of-the-linked-list/
 876. 链表的中间结点
 */

import Foundation

class Solution876 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
