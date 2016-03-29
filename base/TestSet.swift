//
//  TestSet.swift
//  Test
//
//  Created by wookyoung on 3/11/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestSet: WTestCase {
    
    func test_set() {
        Assert.equal(Set<Int>([]), Set<Int>([]))
        Assert.equal(Set([1]), Set([1]))
        Assert.equal(Set([1,2,3]), Set([3,2,1]))
    }
    
    func test_set_array() {
        Assert.equal([1,2,3], Array(Set([3,2,1])).sort())
    }
    
    func test_set_union() {
        Assert.equal(Set([1,2,3]), Set([1,2]).union(Set([2,3])))
//        Assert.equal(Set([1,2,3]), Set([1,2]) ∪ Set([2,3]))
        
        Assert.equal(Set([1,2,3]), Set([1,2,3]).union(Set([2,3])))
//        Assert.equal(Set([1,2,3]), Set([1,2,3]) ∪ Set([2,3]))
        
//        Assert.equal(Set(["a","b","c"]), Set(["a","b","c"]) ∪ Set(["b","c"]))
//        Assert.equal(Set([[0,0], [0,1]]), Set([[0,0]]) ∪ Set([[0,1]]))
    }
    
    func test_set_intersect() {
        Assert.equal(Set([2]), Set([1,2]).intersect(Set([2,3])))
//        Assert.equal(Set([2]), Set([1,2]) ∩ Set([2,3]))
        
        Assert.equal(Set([2,3]), Set([1,2,3]).intersect(Set([2,3,5])))
//        Assert.equal(Set([2,3]), Set([1,2,3]) ∩ Set([2,3,5]))
    }

    func test_set_subtract() {
        Assert.equal(Set([1]), Set([1,2]).subtract(Set([2,3])))
//        Assert.equal(Set([1]), Set([1,2]) ∖ Set([2,3]))
        
        Assert.equal(Set([1,2]), Set([1,2,3]).subtract(Set([3])))
//        Assert.equal(Set([1,2]), Set([1,2,3]) ∖ Set([3]))
    }

    func test_set_complement() {
        Assert.equal(Set([1]), Set([2,3]).complement(Set([1,2])))
//        Assert.equal(Set([1]), Set([2,3]) ∁ Set([1,2]))
        
        Assert.equal(Set([1,2]), Set([3]).complement(Set([1,2,3])))
//        Assert.equal(Set([1,2]), Set([3]) ∁ Set([1,2,3]))
    }
    
}