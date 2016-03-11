//
//  TestSet.swift
//  Test
//
//  Created by wookyoung on 3/11/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestSet: WTestCase {
    func test_set() {
        Assert.True(Set<Int>([]) == Set<Int>([]))
        Assert.equal(Set([1]), Set([1]))
    }
    
    func test_set_order() {
        Assert.equal(Set([1,2,3]), Set([3,2,1]))
    }

}