//
//  LeetCode21.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/2.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class Solution21 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var stub: ListNode? = ListNode(0)
        let newHeader = stub
        var left = l1
        var right = l2
        while left != nil && right != nil {
            if left!.val > right!.val {
                stub!.next = right
                right = right!.next
            } else {
                stub!.next = left
                left = left!.next
            }
            stub = stub!.next
        }
        stub!.next = left != nil ? left : right
        return newHeader!.next
    }
}
