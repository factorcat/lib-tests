//
//  TestString.swift
//  Test
//
//  Created by wookyoung on 2/18/16.
//  Copyright © 2016 factorcat. All rights reserved.
//



import Foundation


class TestString: WTestCase {
    
    func test_range() {
        Assert.equal(Range(start: 5,end: 8), 5..<8)
        
        let a: String = "00000123000"
        Assert.equal("123", a[5..<8])
        
        Assert.equal("00000123", a[0..<8])
        Assert.equal("00000123000", a[0..<15])
    }

    func test_nth() {
        let a: String = "012345678"
        Assert.equal("0", String(a[0]))
        Assert.equal("1", String(a[1]))
        Assert.equal(48, a[0].value)
    }
    
    func test_slice() {
        let a: String = "012345678"
        Assert.equal("345678", a.slice_end(3)) // 3..end
    }

    func test_split() {
        let a: String = "1, 2, 3"
        Assert.equal(["1", "2", "3"], a.split(", "))
        
        Assert.equal(["1,", "2,", "3"], a.split(by: .space))
    }
    
    func test_data() {
        Assert.equal("", "".data().string())
        Assert.equal("a", "a".data().string())
    }
    
    func test_int() {
        Assert.equal(123, Int("123"))
        Assert.equal(23, parse(Int.self, " 23"))
    }
    
}

