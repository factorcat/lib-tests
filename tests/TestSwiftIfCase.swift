//
//  TestSwiftIfCase.swift
//  Test
//
//  Created by wookyoung on 2/14/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation


class TestSwiftIfCase: WTestCase {
    
    enum Color {
    case red
    case green
    case blue
    }

    func test_if_let_where() {
        let n: Int? = 5
        var cnt = 0
        if let num = n where num > 3 {
            cnt += 1
        }
        Assert.equal(1, cnt)
    }

    func test_if_let_switch_case() {
        let color: Color? = nil
        var cnt = 0
        if let col = color {
            switch col {
            case .green:
                break
            default:
                break
            }
        } else {
            cnt += 1
        }
        Assert.equal(1, cnt)
    }

    func test_switch_case() {
        let color: Color? = nil
        var cnt = 0
        switch color {
        case nil:
            cnt += 1
        case .Some:
            cnt += 5
        }
        Assert.equal(1, cnt)
    }
    
    func test_if_case_enum() {
        let color: Color = .green
        var cnt = 0
        if case .green = color {
            cnt += 1
        }
        Assert.equal(1, cnt)
    }
    
    func test_if_case() {
        let ext = "txt"
        var cnt = 0
        if case "txt" = ext {
            cnt += 1
        }
        Assert.equal(1, cnt)
    }
    
}