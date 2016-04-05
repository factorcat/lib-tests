//
//  TestString.swift
//  Test
//
//  Created by wookyoung on 2/18/16.
//  Copyright © 2016 factorcat. All rights reserved.
//



import Foundation


class TestString: WTestCase {

    func test_rangeOfString() {
        var text: String
        
        text = "abcdef\nghijklmn\nopqrstu"
        var selectedRange = NSMakeRange(15, 0)
        var str = text[0..<selectedRange.location]
        Assert.equal("abcdef\nghijklmn", str)
        var cnt = 0
        if let range = str.rangeOfString("\n", options: .BackwardsSearch) {
            Assert.equal("ghijklmn", str.substringFromIndex(range.startIndex.advancedBy(1)))
            cnt += 1
        }
        Assert.equal(1, cnt)
        
        text = "abcdef\nghijklmn\nopqrstu"
        selectedRange = NSMakeRange(6, 0)
        str = text[0..<selectedRange.location]
        Assert.equal("abcdef", str)
        cnt = 0
        if let _ = str.rangeOfString("\n", options: .BackwardsSearch) {
            cnt += 1
        }
        Assert.equal(0, cnt)
        
        text = ""
        selectedRange = NSMakeRange(0, 0)
        str = text[0..<selectedRange.location]
        Assert.equal("", str)
        cnt = 0
        if let _ = str.rangeOfString("\n", options: .BackwardsSearch) {
            cnt += 1
        }
        Assert.equal(0, cnt)
    }
    
    func test_subscript_range() {
        let a: String = "00000123000"
        Assert.equal("123", a[5..<8])
        
        Assert.equal("00000123", a[0..<8])
        Assert.equal("00000123000", a[0..<15])
    }

    func test_subscript_NSRange() {
        let a: String = "00000123000"
        Assert.equal("123", a[NSMakeRange(5,3)])
        
        Assert.equal("00000123", a[NSMakeRange(0,8)])
        Assert.equal("00000123000", a[NSMakeRange(0,15)])
    }

    func test_nth() {
        let a: String = "012345678"
        Assert.equal("0", String(a[0]))
        Assert.equal("1", String(a[1]))
        Assert.equal(Character("0"), a[0])
    }
    
    func test_slice() {
        let a: String = "012345678"
        Assert.equal("345678", a.slice_to_end(3)) // 3..end
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
        Assert.equal("1", "\0 1 ".strip(include: .null))
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
        
        Assert.equal(nil, Float("1.2.1"))
    }
    
    func test_unicode() {
        Assert.equal("가", "\u{ac00}")
    }
    
    func test_canonical_mapping() {
        Assert.equal("\u{2fad}", "\u{2fad}".precomposedStringWithCanonicalMapping)
        Assert.equal("\u{2fad}", "\u{2fad}".decomposedStringWithCanonicalMapping)
        Assert.equal("\u{9751}", "\u{2fad}".precomposedStringWithCompatibilityMapping)
        Assert.equal("\u{9751}", "\u{2fad}".decomposedStringWithCompatibilityMapping)

        Assert.equal("\u{9751}", "\u{9751}".precomposedStringWithCanonicalMapping)
        Assert.equal("\u{9751}", "\u{9751}".decomposedStringWithCanonicalMapping)
        Assert.equal("\u{9751}", "\u{9751}".precomposedStringWithCompatibilityMapping)
        Assert.equal("\u{9751}", "\u{9751}".decomposedStringWithCompatibilityMapping)
    }
}