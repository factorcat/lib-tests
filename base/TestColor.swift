//
//  TestColor.swift
//  Test
//
//  Created by wookyoung on 3/21/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit

class TestColor: WTestCase {
    
    func test_rgb() {
        Assert.equal("#FF0000", UIColor(red: 1, green: 0, blue: 0, alpha: 1).hex())
        Assert.equal("#FF0000", UIColor.rgb255(255,0,0).hex())
        Assert.equal("#00FFFF", UIColor.cyanColor().hex())
        Assert.equal("#FF00FF", UIColor.magentaColor().hex())
        Assert.equal("#FFFF00", UIColor.yellowColor().hex())
        Assert.equal("#7F7F7F", UIColor.grayColor().hex())
    }

    func test_cmyk() {
        var (c,m,y,k):(Double, Double, Double, Double)

        
        (c,m,y,k) = UIColor.whiteColor().cmyk()
//        Assert.equal([0.0, 0.0, 1.0, 0.0], [c,m,y,k])

        (c,m,y,k) = UIColor.yellowColor().cmyk()
        Assert.equal([0.0, 0.0, 1.0, 0.0], [c,m,y,k])


        (c,m,y,k) = UIColor.blackColor().cmyk()
//        Assert.equal([1.0, 0.0, 1.0, 0.0], [c,m,y,k])

        (c,m,y,k) = UIColor.greenColor().cmyk()
        Assert.equal([1.0, 0.0, 1.0, 0.0], [c,m,y,k])

        
        (c,m,y,k) = UIColor.cyanColor().cmyk()
        Assert.equal([1.0, 0.0, 0.0, 0.0], [c,m,y,k])
        
        (c,m,y,k) = UIColor.magentaColor().cmyk()
        Assert.equal([0.0, 1.0, 0.0, 0.0], [c,m,y,k])

        (c,m,y,k) = UIColor.blueColor().cmyk()
        Assert.equal([1.0, 1.0, 0.0, 0.0], [c,m,y,k])

        (c,m,y,k) = UIColor.redColor().cmyk()
        Assert.equal([0.0, 1.0, 1.0, 0.0], [c,m,y,k])

    }

    func test_hsb() {
        var (h,s,b):(CGFloat, CGFloat, CGFloat)
        
        (h,s,b) = UIColor.whiteColor().hsb()
        Assert.equal([0.0, 0.0, 1.0], [h,s,b])
        Assert.equal("#FFFFFF", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())

        (h,s,b) = UIColor.grayColor().hsb()
        Assert.equal([0.0, 0.0, 0.5], [h,s,b])
        Assert.equal("#7F7F7F", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())

        (h,s,b) = UIColor(hue:0, saturation: 0, brightness: 0.5, alpha: 1).hsb()
        Assert.equal([0.0, 0.0, 0.5], [h,s,b])
        Assert.equal("#7F7F7F", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.blackColor().hsb()
        Assert.equal([0.0, 0.0, 0.0], [h,s,b])
        Assert.equal("#000000", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.redColor().hsb()
        Assert.equal([1.0, 1.0, 1.0], [h,s,b])
        Assert.equal("#FF0000", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.greenColor().hsb()
        Assert.equal([1/3, 1.0, 1.0], [h,s,b])
        Assert.equal("#00FF00", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.blueColor().hsb()
        Assert.equal([2/3, 1.0, 1.0], [h,s,b])
        Assert.equal("#0000FF", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.cyanColor().hsb()
        Assert.equal([0.5, 1.0, 1.0], [h,s,b])
        Assert.equal("#00FFFF", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.magentaColor().hsb()
        Assert.equal([5/6, 1.0, 1.0], [h,s,b])
        Assert.equal("#FF00FF", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
        
        (h,s,b) = UIColor.yellowColor().hsb()
        Assert.equal([1/6, 1.0, 1.0], [h,s,b])
        Assert.equal("#FFFF00", UIColor(hue: h, saturation: s, brightness: b, alpha: 1).hex())
    }
}

