//
//  TestRange.swift
//  Test
//
//  Created by wookyoung on 2/14/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestRange: WTestCase {
    
    func test_range() {
        Assert.equal(Range(start: 5,end: 8), 5..<8)
        Assert.True(5..<8 == 5..<8)
    }
    
    func test_nsrange() {
        Assert.equal(NSRange(location: 5, length: 8), NSMakeRange(5, 8))
    }


}