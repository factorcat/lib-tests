//
//  TestSwiftGuard.swift
//  Test
//
//  Created by wookyoung on 3/8/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestSwiftGuard: WTestCase {
    
    func guard_func(n: Int) -> Int {
        guard n > 5 else {
            return 0
        }
        return 10
    }
    
    func test_guard() {
        Assert.equal(0, guard_func(1))
    }
    
    func test_guard_else() {
        Assert.equal(10, guard_func(10))
    }

}