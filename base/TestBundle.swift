//
//  TestBundle.swift
//  Test
//
//  Created by wookyoung on 2/6/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestBundle: WTestCase {

    func test_version() {
        var v: VersionNumber

        v = VersionNumber("1.2")
        Assert.equal(1, v.major)
        Assert.equal(2, v.minor)
        Assert.equal(0, v.patch)
        Assert.equal("1.2", String(v))

        v = VersionNumber("1.2.3")
        Assert.equal(1, v.major)
        Assert.equal(2, v.minor)
        Assert.equal(3, v.patch)
        Assert.equal("1.2.3", String(v))

        Assert.True(VersionNumber("1.2.3") == v)
        Assert.True(VersionNumber("1.3") > v)
        Assert.True(VersionNumber("2") > v)
    }

    func test_bundle() {
        Assert.equal(VersionNumber(major: 1, minor: 0, patch: 0), Bundle.version)
        Assert.equal("1.0", String(Bundle.version))
        Assert.equal("1", Bundle.build)
        Assert.equal("com.factor.TestReport", Bundle.identifier)
        Assert.equal("TestReport", Bundle.name)
        Assert.equal("TestReport", Bundle.displayName)
    }
}
