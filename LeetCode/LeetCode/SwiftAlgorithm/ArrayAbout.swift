//
//  ArrayAbout.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/19.
//  Copyright © 2021 liangqili.com. All rights reserved.
// Swift中数组常用操作

class ArrayAbout {
    func arrayHandle() {
        //MARK: 初始化
        #if false
        let arr : [Int] = [1,2,3]
        let arr1 : [Any] = [1,"2"]
        let arr3 = Array(repeating: -1, count: 10)
        let arr4 = [Int]()
        let arr5 : Array<Int> = []
        #endif
        //MARK: 随机访问
        #if false
        let arr = [1,3,4,5,6,7]
        print(arr[1])//下标访问
        print(arr.first!)//可选值
        print(arr.last!)//可选值
        #endif
        //MARK: 遍历
        #if false
        let arr = [1,3,4,5,6,7]
        // 不需要index
        for value in arr {
            print(value)
        }
        // 需要index
        for i in 0..<arr.count {
            print(arr[i])
        }
        // 同时需要
        for (index,value) in arr.enumerated() {
            print("(\(index),\(value))")
        }
        // forEach
        arr.forEach{print($0+10)}
        #endif
        //MARK: 高阶函数
        //Map
        #if false
        let arr = [1,3,4,5,6,7]
        var newArr = arr.map({(value:Int)->Int in
                return value + 1
        })
        print(newArr)
        newArr = arr.map{$0+1}
        print(newArr)
        #endif
        //compactMap
        #if false
        let arr = ["1","2","3","a","b","6"]
        let newArr = arr.map{Int($0)}
        print(newArr)
        let newArr2 = arr.compactMap{Int($0)}
        print(newArr2)
        #endif
        // flatMap
        #if false
        let arr = [[1,3,4],[4,5,6]]
        print(arr.flatMap{$0})
        #endif
        // filter
        #if false
        let arr = [1,3,4,5,6,7]
        print(arr.filter{$0>4})
        #endif
        // reduce
        #if false
        let arr = [1,3,4,5,6,7]
        print(arr.reduce(0){$0+$1})
        #endif
        // sort
        #if false
        let arr = [4,1,8,3,2,10]
        print(arr.sorted{$1<$0})
        print(arr.sorted()) // 默认升序
        print(arr.sorted(by: <))
        var arr1 = [4,1,8,3,2,10]
        arr1.sort()
        print(arr1)
        #endif
        //reverse
        #if false
        var arr = [4,1,8,3,2,10]
        arr.reverse()
        print(arr)
        let arr1 = [4,1,8,3,2,10]
        print(arr1.reversed())
        for value in arr1.reversed() {
            print(value)
        }
        for (index,value) in arr1.enumerated().reversed() {
            print("\(index),\(value)")
        }
        #endif
        //MARK: 添加
        #if false
        var arr = [1,3,4]
        arr.append(4)
        print(arr) // [1, 3, 4, 4]
        arr.append(contentsOf: [4,5,6])
        print(arr) // [1, 3, 4, 4, 4, 5, 6]
        let ret = stride(from: 10, to: 20, by: 2).map{$0}
        print(ret) // [10, 12, 14, 16, 18]
        let ret2 = stride(from: 10, through: 20, by: 2).map{$0}
        print(ret2) // [10, 12, 14, 16, 18, 20]
        arr.append(contentsOf: stride(from: 10, to: 20, by: 3))
        print(arr) //[1, 3, 4, 4, 4, 5, 6, 10, 13, 16, 19]
        #endif
        //MARK: 插入
        #if false
        var arr = [1,3,4]
        arr.insert(7, at: 1)
        print(arr) // [1, 7, 3, 4]
        arr.insert(contentsOf: [2,3,4], at: 1)
        print(arr) // [1, 2, 3, 4, 7, 3, 4]
        #endif
        //MARK: 删除
        #if false
        var arr = [1, 2, 3, 4, 7, 3, 4, 1, 2, 3, 4, 7]
        arr.removeFirst()
        print(arr)//[2, 3, 4, 7, 3, 4, 1, 2, 3, 4, 7]
        arr.removeLast()
        print(arr)//[2, 3, 4, 7, 3, 4, 1, 2, 3, 4]
        arr.removeFirst(2)
        print(arr)//[4, 7, 3, 4, 1, 2, 3, 4]
        arr.removeLast(3)
        print(arr)//[4, 7, 3, 4, 1]
        arr.remove(at: 2)
        print(arr)//[4, 7, 4, 1]
        arr.removeSubrange(0...2)
        print(arr)//[1]
        arr.removeAll()
        print(arr)//[]
        #endif
        //MARK: 运算符
        #if false
        let arr = [1, 2, 3, 4, 7, 3]
        var ret = arr + [5]
        print(ret)//[1, 2, 3, 4, 7, 3, 5]
        ret = [6] + arr
        print(ret)//[6, 1, 2, 3, 4, 7, 3] //reduce可以利用这个操作进行魔法
        #endif
        //MARK: 属性
        let arr = [1, 2, 3, 4, 7, 3]
        print(arr.count) // 6
        print(arr.isEmpty) // false
        print(arr.capacity) // 6
        print(arr.min()!) // 1
        print(arr.max()!) // 7
        print(arr.contains(3))//true
        print(arr.lastIndex(of: 2)!)//1
        print(arr.firstIndex(of: 4)!)//3
        
    }
}

