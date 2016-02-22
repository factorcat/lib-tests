//
//  TestBase.swift
//  Test
//
//  Created by wookyoung on 2/14/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestBase: WTestCase {
    
    func test_uint() {
        let i: Int = 1
        Assert.equal(UInt(1), UInt(i))
    }
}