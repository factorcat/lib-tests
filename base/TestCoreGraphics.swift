//
//  TestCoreGraphics.swift
//  Test
//
//  Created by wookyoung on 2/23/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import CoreGraphics

class TestCoreGraphics: WTestCase {
    func test_cgpoint() {
        Assert.equal(CGPointZero, CGPointZero)
        Assert.True(CGPointZero == CGPointZero)
    }
    
    func test_cgsize() {
        Assert.equal(CGSizeZero, CGSizeZero)
        Assert.True(CGSizeZero == CGSizeZero)
    }
    
    func test_cgrect() {
        Assert.equal(CGRectZero, CGRectZero)
        Assert.True(CGRectZero == CGRectZero)
    }
}