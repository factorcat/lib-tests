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
    
    
    func test_dates() {
        Assert.equal("ko", NSLocale.currentLocale().languageCode)
        
        let d = NSDate(year: 2016, month: 2, day: 5, hour: 13, min: 2, sec: 3)
        Assert.equal("", d.string(.NoStyle))
        
        Assert.equal("2016. 2. 5. 오후 1:02", d.string(.ShortStyle))
        Assert.equal("2016. 2. 5. 오후 1:02:03", d.string(.MediumStyle))
        Assert.equal("2016년 2월 5일 오후 1시 2분 3초 GMT+9", d.string(.LongStyle))
        Assert.equal("2016년 2월 5일 금요일 오후 1시 2분 3초 대한민국 표준시", d.string(.FullStyle))

        Assert.equal("2016. 2. 5.", d.string(date: .ShortStyle))
        Assert.equal("2016. 2. 5.", d.string(date: .MediumStyle))
        Assert.equal("2016년 2월 5일", d.string(date: .LongStyle))
        Assert.equal("2016년 2월 5일 금요일", d.string(date: .FullStyle))
        
        Assert.equal("오후 1:02", d.string(time: .ShortStyle))
        Assert.equal("오후 1:02:03", d.string(time: .MediumStyle))
        Assert.equal("오후 1시 2분 3초 GMT+9", d.string(time: .LongStyle))
        Assert.equal("오후 1시 2분 3초 대한민국 표준시", d.string(time: .FullStyle))
        
        Assert.equal("2016-02-05 13:02:03", d.string(.yyyyMMdd_HHmmss))
        // Assert.equal("2016-02-05 13:02:03.XXX", d.string(.yyyyMMdd_HHmmssSSS))
        
        let n = NSDate()
        let time = n.hour_min_sec_nano
        let nano = roundString(Double(time.nano)/1000000, n: 3)
        Assert.equal(nano, n.string(.SSS))
        
    }
}