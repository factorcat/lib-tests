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
        Assert.equal("1.0", Bundle.version)
        Assert.equal("1", Bundle.build)
    }
}
