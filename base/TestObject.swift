//
//  TestObject.swift
//  Test
//
//  Created by wookyoung on 3/8/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit

class Fruit: UIView {
    var name: String
    required init?(coder: NSCoder = NSCoder()) {
        name = ""
        super.init(frame: CGRectZero)
    }
}

class Apple: Fruit {
    required init?(coder: NSCoder = NSCoder()) {
        super.init(coder: coder)
        name = "apple"
    }
}

class Banana: Fruit {
    required init?(coder: NSCoder = NSCoder()) {
        super.init(coder: coder)
        name = "banana"
    }
}


class TestObject: WTestCase {
    
    func create(klass: Fruit.Type) -> Fruit {
        if let fruit: Fruit = klass.init() {
            return fruit
        }
        return Fruit()!
    }
    
    func test_factory() {
        var cnt = 0
        
        if let a = create(Apple.self) as? Apple {
            Assert.equal("apple", a.name)
            cnt += 1
        }
        
        if let b = create(Banana.self) as? Banana {
            Assert.equal("banana", b.name)
            cnt += 1
        }
        
        Assert.equal(2, cnt)
    }

}
