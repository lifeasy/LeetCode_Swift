//
//  LeetCode224.swift
//  LeetCode
//
//  Created by 360JR on 2021/2/5.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation

class Solution224 {
    func calculate(_ s: String) -> Int {
        var container = [String]()
        for character in s {
            let cStr = String(character)
            if cStr == " " {
                continue
            }
            if container.isEmpty {
                container.append(cStr)
                continue
            }
            // 如果是（+-,直接添加
            if cStr == "+" ||
               cStr == "-" ||
               cStr == "(" {
                   container.append(cStr)
            } else if cStr == ")" {
                var l1 = container.removeLast()
                container.removeLast()
                while container.count > 0 && (container.last! == "+" || container.last! == "-") {
                    l1 = self.calc(container.removeLast(), container.removeLast(), l1)
                }
                container.append(l1)
            } else {//数字
                if container.last! == "+" ||
                   container.last! == "-" {
                       let operate = container.removeLast()
                       let num1 = container.removeLast()
                        let ret = self.calc(operate,num1,cStr)
                        container.append(ret)
                } else if container.last! == "(" {
                    container.append(cStr)
                } else {
                    let l1 = container.removeLast()
                    container.append(l1+cStr)
                }
            }
        }
        return Int(container.first!)!
    }
    func calc(_ operate:String,_ num1:String,_ num2:String)->String {
        if operate == "+" {
            return String(Int(num1)! + Int(num2)!)
        } else {
            return String(Int(num1)! - Int(num2)!)
        }
    }
}
