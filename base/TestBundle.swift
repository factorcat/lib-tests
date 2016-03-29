//
//  TestBundle.swift
//  Test
//
//  Created by wookyoung on 2/6/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestBundle: WTestCase {
    func test_bundle() {
        Assert.equal("1.0", String(Bundle.version))
        Assert.equal("1", Bundle.build)
        Assert.equal("com.factor.TestReport", Bundle.identifier)
        Assert.equal("TestReport", Bundle.name)
        Assert.equal("TestReport", Bundle.displayName)
    }
}
