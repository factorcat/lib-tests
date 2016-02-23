//
//  TestCrashReport.swift
//  Test
//
//  Created by wookyoung on 2/23/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestCrashReport: WTestCase {
    func test_crashreport() {
        Assert.True(!CrashReport.summary().isEmpty)
    }
}
