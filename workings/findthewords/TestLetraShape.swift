//
//  TestLetraShape.swift
//  Test
//
//  Created by wookyoung on 3/11/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

class TestLetraShape: WTestCase {

    func test_shape_change() {
        var shape = LetraShape(["apple".chars])
        shape.change(.Sero)
        Assert.equal("a,p,p,l,e", shape.matrix)
        
        shape.change(.LeftCross)
        Assert.equal("a____," +
                     "_p___," +
                     "__p__," +
                     "___l_," +
                     "____e", shape.matrix)

        shape.change(.RightCross)
        Assert.equal("____a," +
                     "___p_," +
                     "__p__," +
                     "_l___," +
                     "e____", shape.matrix)
        
        shape.change(.GaroReverse)
        Assert.equal("elppa", shape.matrix)
        
        shape.change(.SeroReverse)
        Assert.equal("a,p,p,l,e", shape.matrix)
        
        shape.change(.LeftCrossReverse)
        Assert.equal("e____," +
                     "_l___," +
                     "__p__," +
                     "___p_," +
                     "____a", shape.matrix)

        shape.change(.RightCrossReverse)
        Assert.equal("____e," +
                     "___l_," +
                     "__p__," +
                     "_p___," +
                     "a____", shape.matrix)
    }

    func test_shape_recover() {
        var shape = LetraShape(["apple".chars])
        shape.change(.RightCrossReverse)
        Assert.equal("____e," +
                     "___l_," +
                     "__p__," +
                     "_p___," +
                     "a____", shape.matrix)
        Assert.equal("apple", LetraShape(shape.recover()).matrix)
    }
    
    func test_shape_transform() {
        let shape = LetraShape(["apple".chars])
        let target = shape.letras
        Assert.equal("apple", LetraShape(shape.transform(target, state: .Garo)).matrix)
        Assert.equal("a,p,p,l,e", LetraShape(shape.transform(target, state: .Sero)).matrix)
        Assert.equal("a____," +
                     "_p___," +
                     "__p__," +
                     "___l_," +
                     "____e", LetraShape(shape.transform(target, state: .LeftCross)).matrix)
        Assert.equal("____a," +
                     "___p_," +
                     "__p__," +
                     "_l___," +
                     "e____", LetraShape(shape.transform(target, state: .RightCross)).matrix)
        Assert.equal("elppa", LetraShape(shape.transform(target, state: .GaroReverse)).matrix)
        Assert.equal("a,p,p,l,e", LetraShape(shape.transform(target, state: .SeroReverse)).matrix)
        Assert.equal("e____," +
                     "_l___," +
                     "__p__," +
                     "___p_," +
                     "____a", LetraShape(shape.transform(target, state: .LeftCrossReverse)).matrix)
        Assert.equal("____e," +
                     "___l_," +
                     "__p__," +
                     "_p___," +
                     "a____", LetraShape(shape.transform(target, state: .RightCrossReverse)).matrix)
    }

    func test_shape_letras() {
        let shape = LetraShape(["filibuster".chars])
        Assert.equal([["f","i","l","i","b","u","s","t","e","r"]], shape.letras)
        Assert.equal(.Garo, shape.state)
    }

}