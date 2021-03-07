//
//  Node.swift
//  LeetCode
//
//  Created by 360JR on 2021/3/7.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        children = []
    }
}
