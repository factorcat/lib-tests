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

class TestPoint: WTestCase {
    func test_equal() {
        Assert.True((1,2) == (1,2))
        Assert.True((1,2) == (1.0,2.0))
//        Assert.True((1,2) != (1.1,2))
//        Assert.True((1,2) != (1.1,2.0))
    }
    
    func test_tuple() {
        Assert.equal(CGPointMake(1,2), CGPoint(tuple: (1,2)))
        Assert.equal(CGPointMake(1,2), CGPoint(tuple: (1.0,2.0)))
    }
    
    func test_tuples() {
        Assert.equal([CGPointMake(1,2)], CGPoints(tuples: [(1,2)]))
        Assert.equal([CGPointMake(1,2), CGPointMake(5,6)], CGPoints(tuples: [(1,2), (5,6)]))
    }
    
    func test_tupleof() {
        Assert.equal((1,2), tupleof(CGPointMake(1,2)))
        Assert.equal((1.0,2.0), tupleof(CGPointMake(1,2)))
    }
}