//
//  TestNetwork.swift
//  Test
//
//  Created by wookyoung on 2/21/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation


class TestNetwork: WTestCase {
    func xtest_network() {
        
        let net = is_available(.network)
        Assert.True(net)
        
    }
}