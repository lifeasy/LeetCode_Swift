//
//  main.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//

import Foundation
print(">>>>>>>>>>>>>>>>>>>>Start!<<<<<<<<<<<<<<<<<<<<<<<")

func reverseList(_ head: ListNode?) -> ListNode? {
    var preNode : ListNode? = nil
    var headNode = head
    while headNode != nil {
        let next = headNode!.next
        headNode!.next = preNode
        preNode = headNode
        headNode = next
    }
    return preNode
}

var list = List(byArray: [3,1,5,7,3,6])
list.printList()

print(">>>>>>>>>>>>>>>>>>>>End!<<<<<<<<<<<<<<<<<<<<<<<")


var listNode = list.head

var reList = reverseList(listNode);
ListNode.printListNode(reList);



print(">>>>>>>>>>>>>>>>>>>>End!<<<<<<<<<<<<<<<<<<<<<<<")

