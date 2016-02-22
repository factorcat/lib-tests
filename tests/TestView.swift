//
//  TestView.swift
//  Test
//
//  Created by wookyoung on 2/5/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit

class TestView: WTestCase {
    func test_traverse() {
        let v: UIView = UIApplication.sharedApplication().windows.first!
        var cnt = 0
        v.traverseSubviews({ depth, subview in
            cnt += 1
        })
        Assert.equal(1, cnt)
    }
}