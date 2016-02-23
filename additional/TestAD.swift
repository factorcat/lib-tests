//
//  TestAD.swift
//  Test
//
//  Created by wookyoung on 2/23/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit

class ListViewController: ADTableViewController {
}

class TestAD: WTestCase {
    func test_ad() {
        let vc = ListViewController()
        Assert.True(vc.bannerView == nil)
        Assert.True(ADTableViewController.self == vc.dynamicType.superclass())
    }
}
