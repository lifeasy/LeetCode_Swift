//
//  LeetCode86.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/3.
//  Copyright © 2021 liangqili.com. All rights reserved.
//
/**
 给你一个链表和一个特定值 x ，请你对链表进行分隔，使得所有小于 x 的节点都出现在大于或等于 x 的节点之前。

 你应当保留两个分区中每个节点的初始相对位置。

  

 示例：

 输入：head = 1->4->3->2->5->2, x = 3
 输出：1->2->2->4->3->5

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/partition-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

// 使用两个链表，分别存储>=x和<x的node，分离链表后，在合并 

import Foundation

public class ListNode86 {
    public var val :Int
    public var next : ListNode86?
    public init(_ val : Int) {
        self.val = val
        self.next = nil
    }
}

class Solution86 {
    func partition(_ head:ListNode86?, _ x:Int) -> ListNode86? {
        var small = ListNode86(0)
        let smallHead = small
        var large = ListNode86(0)
        let largeHead = large
        var listPoint = head
        while listPoint != nil {
            if listPoint!.val >= x {
                large.next = listPoint
                large = large.next!
            } else {
                small.next = listPoint
                small = small.next!
            }
            listPoint = listPoint!.next;
        }
        large.next = nil
        small.next = largeHead.next
        return smallHead.next;
    }
}
