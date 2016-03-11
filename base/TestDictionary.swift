//
//  TestDictionary.swift
//  Test
//
//  Created by wookyoung on 3/11/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestDictionary: WTestCase {
    func test_dict() {
        let dict = ["A": 1, "B": 2, "C": 3]
        Assert.True(dict == dict)
        Assert.equal(1, dict["A"])
        Assert.equal(nil, dict["None"])
        Assert.equal(Set(["C","B","A"]), Set(dict.keys))
        Assert.equal(Set([3,2,1]), Set(dict.values))
        
        Assert.True(["C": 3, "B": 2, "A": 1] == dict)
    }
    
    func test_map() {
        let dict = ["A": 1, "B": 2, "C": 3]
        Assert.equal(Set([3,2,1]), Set(dict.map{ key,value in value}))
        Assert.equal(Set(["C","B","A"]), Set(dict.map{ key,value in key}))
    }
    
    func test_OrderedDict() {
        let dict = OrderedDict(pairs: [("A", 1), ("B", 2), ("C", 3)])
        Assert.True(dict == dict)
        Assert.equal(1, dict["A"])
        Assert.equal(nil, dict["None"])
        
        Assert.equal(["A","B","C"], dict.keys)
        Assert.equal([1,2,3], dict.values)

        Assert.equal(["A","B","C"], dict.map{ key,value in key})
        Assert.equal([1,2,3], dict.map{ key,value in value})
        
        Assert.True(["C": 3, "B": 2, "A": 1] == dict.dictionary)
    }
}