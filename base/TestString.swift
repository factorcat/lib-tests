//
//  TestString.swift
//  Test
//
//  Created by wookyoung on 2/18/16.
//  Copyright © 2016 factorcat. All rights reserved.
//



import Foundation


class TestString: WTestCase {
    
    func test_subscript() {
        let a: String = "00000123000"
        Assert.equal("123", a[5..<8])
        
        Assert.equal("00000123", a[0..<8])
        Assert.equal("00000123000", a[0..<15])
    }

    func test_nth() {
        let a: String = "012345678"
        Assert.equal("0", String(a[0]))
        Assert.equal("1", String(a[1]))
        Assert.equal(Character("0"), a[0])
    }
    
    func test_slice() {
        let a: String = "012345678"
        Assert.equal("345678", a.slice_end(3)) // 3..end
    }
    
    func test_chartype() {
        Assert.equal(" ", Char(.space))
        Assert.equal("\n", Char(.LF))
    }

    func test_split() {
        let a: String = "1, 2, 3"
        Assert.equal(["1", "2", "3"], a.split(", "))
    }
    
    func test_split_by() {
        Assert.equal(["1", "2", "3"], "1 2 3".split(by: .space))
        Assert.equal(["1", "2", "3"], "1\n2\n3".split(by: .LF))
    }
    
    func test_strip() {
        Assert.equal("1", " 1 ".strip())
    }
    
    func test_repeat() {
        Assert.equal("aaa", "a"*3)
    }
    
    func test_data() {
        Assert.equal("", "".data().string())
        Assert.equal("a", "a".data().string())
    }
    
    func test_parse_int() {
        Assert.equal(123, Int("123"))
        Assert.equal(23, parse(Int.self, " 23"))
    }
    
    func test_parse_float() {
        Assert.equal(1.2, Float("1.2"))
        Assert.equal(1.2, parse(Float.self, " 1.2"))
    }

    
    func test_unicode() {
        Assert.equal("가", "\u{ac00}")
    }
    
}

