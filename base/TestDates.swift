//
//  TestDates.swift
//  Test
//
//  Created by wookyoung on 2/5/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestDates: WTestCase {
    
    func test_a_month_ago() {
        let d = NSDate(type: .a_month_ago)
        let today = NSDate(type: .today)
        Assert.True(d < NSDate(type: .a_week_ago))
        Assert.True(d < today)
    }
    
    func test_isgreaterthan() {
        let a_month_ago = NSDate(type: .a_month_ago)
        let a_week_ago = NSDate(type: .a_week_ago)
        let today = NSDate(type: .today)
        Assert.True(today.isGreaterThan(a_month_ago))
        Assert.True(today.isGreaterThan(a_week_ago))
        Assert.True(a_week_ago.isGreaterThan(a_month_ago))
    }
    
    func test_dates() {
        let ko = NSLocale(localeIdentifier: "ko_KR")

//        Assert.equal("ko", NSLocale.currentLocale().languageCode)
        
        let d = NSDate(year: 2016, month: 2, day: 5, hour: 13, min: 2, sec: 3)
        Assert.equal("", d.string(.NoStyle, ko))
        
        Assert.equal("2016. 2. 5. 오후 1:02", d.string(.ShortStyle, ko))
        Assert.equal("2016. 2. 5. 오후 1:02:03", d.string(.MediumStyle, ko))
        Assert.equal("2016년 2월 5일 오후 1시 2분 3초 GMT+9", d.string(.LongStyle, ko))
        Assert.equal("2016년 2월 5일 금요일 오후 1시 2분 3초 대한민국 표준시", d.string(.FullStyle, ko))

        Assert.equal("2016. 2. 5.", d.string(date: .ShortStyle, ko))
        Assert.equal("2016. 2. 5.", d.string(date: .MediumStyle, ko))
        Assert.equal("2016년 2월 5일", d.string(date: .LongStyle, ko))
        Assert.equal("2016년 2월 5일 금요일", d.string(date: .FullStyle, ko))
        
        Assert.equal("오후 1:02", d.string(time: .ShortStyle, ko))
        Assert.equal("오후 1:02:03", d.string(time: .MediumStyle, ko))
        Assert.equal("오후 1시 2분 3초 GMT+9", d.string(time: .LongStyle, ko))
        Assert.equal("오후 1시 2분 3초 대한민국 표준시", d.string(time: .FullStyle, ko))
        
        Assert.equal("2016-02-05 13:02:03", d.string(.yyyyMMdd_HHmmss))
        // Assert.equal("2016-02-05 13:02:03.XXX", d.string(.yyyyMMdd_HHmmssSSS, ko))
        
        let n = NSDate()
        let time = n.hour_min_sec_nano
        let nano = roundString(Double(time.nano)/1000000, n: 3)
        Assert.equal(nano, n.string(.SSS))
        
    }
}