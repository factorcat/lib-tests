//
//  TestArray.swift
//  Test
//
//  Created by wookyoung on 2/23/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestArray: WTestCase {
    
    func test_subscript() {
        let a: [Int] = [0,0,0,0,0,1,2,3,0,0,0]
        Assert.equal([1,2,3], a[5..<8])
    }
    
    func test_nth() {
        let a: [Int] = [0,1,2,3,4,5,6,7,8]
        Assert.equal(0, a[0])
        Assert.equal(1, a[1])
    }

    func test_join() {
        let a: [Int] = [1,2,3]
        Assert.equal("1 2 3", a.join(.space))
        Assert.equal("1\n2\n3", a.join(.LF))
    }
    
    func test_slice() {
        let a: [Int] = [0,1,2,3,4,5,6,7,8]
        Assert.equal([3,4,5,6,7,8], a.slice_end(3)) // 3..end
    }
    
    func test_map() {
        let a: [Int] = [0,1,2]
        Assert.equal([1,2,3], a.map{ x in 1+x})
        Assert.equal([0,2,4], a.map{ x in 2*x})
    }

    func test_transpose() {
        Assert.equal([[1,4],[2,5],[3,6]], transpose([[1,2,3],[4,5,6]]))
        Assert.equal([[1,2,3],[4,5,6]], transpose([[1,4],[2,5],[3,6]]))
        Assert.equal([["a"],["b"],["c"]], transpose([["a","b","c"]]))
        Assert.equal([["a","b","c"]], transpose([["a"],["b"],["c"]]))
    }

    func test_diagonal() {
        Assert.equal([[1,0,0],[0,2,0],[0,0,3]], diagonal([[1,2,3]], 0))
        Assert.equal([["a","",""],["","b",""],["","","c"]], diagonal([["a","b","c"]], ""))
    }
    
    func test_undiagonal() {
        Assert.equal([[1,2,3]], undiagonal([[1,0,0],[0,2,0],[0,0,3]]))
        Assert.equal([["a","b","c"]], undiagonal([["a","",""],["","b",""],["","","c"]]))
    }
}