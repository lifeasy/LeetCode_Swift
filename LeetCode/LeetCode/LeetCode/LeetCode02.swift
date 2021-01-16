//
//  LeetCode02.swift
//  LeetCode
//
//  Created by 梁啟立 on 2020/7/14.
//  Copyright © 2020 liangqili.com. All rights reserved.
//
// 02 两数相加
//给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
//
//如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
//
//您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/add-two-numbers
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

//输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
//输出：7 -> 0 -> 8
//原因：342 + 465 = 807
import Foundation


 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
    }
 }
 
class Solution02 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var p = l1
        var q = l2
        let result = ListNode(0)
        var carry = 0
        var head = result
        while p != nil || q != nil {
            let sum = (p?.val ?? 0) + (q?.val ?? 0) + carry
            carry = sum/10
            head.next = ListNode(sum%10)
            head = head.next!
            p = p?.next
            q = q?.next
        }
        if carry > 0 {
            head.next = ListNode(carry)
        }
        return result.next
    }
}
