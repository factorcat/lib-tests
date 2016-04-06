//
//  TestTextLines.swift
//  Test
//
//  Created by wookyoung on 4/6/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestTextLines: WTestCase {
    
    struct CharStore: MapperItem {
        var values: [String]
    }
    
    class SplitBySpace: TextLineMapper {
        var item: MapperItem?
        init(_ line: String) {
            self.item = CharStore(values: line.split(by: .space))
        }
    }
    
    func test_textlines_string() {
        let lines = "a b c\nd e f"
        let tl = TextLines(type: .string(lines: lines), rule: {
            line in SplitBySpace(line)
        })
        Assert.equal(2, tl.lines.count)
        Assert.equal(["a","b","c"], (tl.lines[0].item as! CharStore).values)
    }
    
    
    
    struct HanziItem: MapperItem {
        var scalar: UnicodeScalar
        var char: String
        var meaning: String
    }
    
    class SplitByTab: TextLineMapper {
        var item: MapperItem?
        init(_ line: String) {
            let cols = line.split(by: .tab)
            if cols.count > 2 {
                let scan = NSScanner(string: cols[0])
                var n: UInt32 = 0
                scan.scanHexInt(&n)
                let scalar = UnicodeScalar(n)
                let char = cols[1]
                let meaning = cols[2].split(by: .space).last!
                self.item = HanziItem(scalar: scalar, char: char, meaning: meaning)
            }
        }
    }

    // 2FAD	⾭	KANGXI RADICAL BLUE	≈9751(靑)
    func test_textlines_resource() {
        let tl = TextLines(type: .resource(filename: "radicals.txt"), rule: {
            line in SplitByTab(line)
        })
        Assert.equal(214, tl.lines.count)
        if let item = tl.lines[173].item as? HanziItem {
            Assert.equal("\u{2FAD}", item.scalar)
            Assert.equal("⾭", item.char)
            Assert.equal("BLUE", item.meaning)
        }
    }

}