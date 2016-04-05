//
//  TestUpdater.swift
//  Test
//
//  Created by wookyoung on 2/23/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestUpdater: WTestCase {
    func test_updater() {
        Assert.equal("https://raw.githubusercontent.com/factorcat/apps/master/", Updater.base)
    }
}
