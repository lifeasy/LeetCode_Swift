//
//  List.swift
//  LeetCode
//
//  Created by 360JR on 2021/5/31.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class List {
    private var count = 0
    var head: ListNode?
    init(byArray array: [Int]) {
        if array.count > 0 {
            self.count = array.count
            self.head = ListNode(array[0])
            var preNode = head
            for i in 1..<array.count {
                let node = ListNode(array[i])
                preNode?.next = node
                preNode = node
            }
        }
    }
    func printList() {
        var head = head
        while head != nil {
            print("\(head!.val)")
            head = head?.next
        }
    }
}
