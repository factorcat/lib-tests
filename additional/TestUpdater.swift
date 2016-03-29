//
//  TestUpdater.swift
//  Test
//
//  Created by wookyoung on 2/23/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestUpdater: WTestCase {
    func test_version() {
        var v: VersionInfo
            
        v = parse(version: "1.2")
        Assert.equal(1, v.major)
        Assert.equal(2, v.minor)
        Assert.equal(0, v.patch)
        Assert.equal("1.2", String(v))
        
        v = parse(version: "1.2.3")
        Assert.equal(1, v.major)
        Assert.equal(2, v.minor)
        Assert.equal(3, v.patch)
        Assert.equal("1.2.3", String(v))
        
        Assert.True(parse(version: "1.2.3") == v)
        Assert.True(parse(version: "1.3") > v)
        Assert.True(parse(version: "2") > v)
    }
    
    func test_updater() {
        Assert.equal("https://raw.githubusercontent.com/factorcat/apps/master/", Updater.base)
    }
}
