//
//  LeetCode206.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/31.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class Solution206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let p = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return p
    }

    func reverseList_1(_ head: ListNode?) -> ListNode? {
        var _pre: ListNode?
        var _head = head

        while _head != nil {
            let tmp = _head?.next
            _head?.next = _pre
            _pre = _head
            _head = tmp
        }
        return _pre
        /*
         let _stub = ListNode()
         _stub.next = head

         var _head = head
         var _pre = _stub
         while _head?.next != nil {
             let tmp = _head?.next
             _head?.next = _pre
             _pre = _head!
             _head = tmp
         }
         _head?.next = _pre
         _stub.next?.next = nil
         return _head
          */
    }
}
