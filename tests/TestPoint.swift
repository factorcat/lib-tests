//
//  TestPoint.swift
//  Test
//
//  Created by wookyoung on 2/19/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit

class TestPoint: WTestCase {
    func test_equal() {
        Assert.equal(true, (1,2) == (1,2))
        Assert.equal(true, (1,2) == (1.0,2.0))
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