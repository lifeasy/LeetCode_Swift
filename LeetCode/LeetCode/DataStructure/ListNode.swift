//
//  ListNode.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/31.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 *
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { val = 0; next = nil }
    public init(_ val: Int) { self.val = val; next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
    
    static func printListNode(_ head: ListNode?){
        var cur = head
        while cur != nil {
            print("\(cur!.val)")
            cur = cur?.next
        }
    }
}
