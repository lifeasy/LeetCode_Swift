//
//  LeetCode19.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/2.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
 19. 删除链表的倒数第 N 个结点
 */

import Foundation

class Solution19 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var preHead : ListNode? = ListNode(0)
        preHead!.next = head
        let stub = preHead
        var pHead = head
        var pN = n
        while pHead != nil {
            pHead = pHead!.next
            pN -= 1
            if pN < 0 {
                preHead = preHead!.next
            }
        }
        preHead?.next = preHead?.next?.next
        return stub!.next
    }
}
