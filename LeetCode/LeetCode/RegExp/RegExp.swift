//
//  RegExp.swift
//  LeetCode
//
//  Created by 360JR on 2021/1/29.
//  Copyright © 2021 liangqili.com. All rights reserved.
//

import Foundation
class RegExp {
    func test() {
        let invitation = "Fancy a game of Cluedo™?"
        let result = invitation[invitation.range(of: #"\bClue(do)?™?\b"#,
                                                 options: .regularExpression)!]
        print(result)
    }
}
