```swift
let TestList = "Base Bundle Dates Network Point String SwiftIfCase Translate View"

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let result = UnitTest.run(only:
            TestList
            .split(by: .space).map{ x in "Test\(x)"})
        if result.failed > 0 {
            self.view.backgroundColor = UIColor.darkGrayColor()
        } else if result.passed > 0 {
            self.view.backgroundColor = .green(alpha: 0.8)
        }
    }
}
```


```sh
Started
...........................................................
Finished in 0.00616 seconds.
9 tests, 59 assertions, 0 failures, 0 errors
```
