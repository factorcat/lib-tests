//
//  TestTranslate.swift
//  Test
//
//  Created by wookyoung on 2/5/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestTranslate: WTestCase {
    
    func test_locales() {
        let en = NSLocale(localeIdentifier: "en_US")
        Assert.equal("just now", en.translate("just now"))
        
        let ko = NSLocale(localeIdentifier: "ko_KR")
        Assert.equal("방금", ko.translate("just now"))
        Assert.equal("1시간 전", ko.translate("%d hours ago", n: 1))
    }
    
    func test_dates() {
        let ko = NSLocale(localeIdentifier: "ko_KR")
        
        let d1 = NSDate(type: .today, hour: 1, min: 0, sec: 0)
        Assert.equal("just now".translate, d1.since(d1))
        Assert.equal("방금", d1.since(d1, locale: ko))
        
        let d2 = NSDate(type: .today, hour: 1, min: 5, sec: 1)
        Assert.equal("%d mins ago".translate(5), d2.since(d1))
        
        let d3 = NSDate(type: .today, hour: 2, min: 5, sec: 0)
        Assert.equal("%d hours ago".translate(1), d3.since(d1))
        
        let d4 = NSDate(type: .yesterday, hour: 0, min: 0, sec: 0)
        Assert.equal("어제", d1.since(d4, locale: ko))
        
        let d5 = NSDate(type: .tomorrow, hour: 1, min: 0, sec: 0)
        Assert.equal("어제", d5.since(d1, locale: ko))
        
        Assert.equal("미래", d1.since(d5, locale: ko))
    }
}