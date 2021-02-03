//
//  Stack.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/1.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

struct Stack<T> {
    var array : [T] = []
    var isEmpty: Bool {
        return array.isEmpty
    }
    mutating func push(_ item: T) {
        array.append(item)
    }
    mutating func pop() -> T? {
        return array.popLast()
    }
    func peek() -> T? {
        return array.last
    }
}
