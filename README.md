```swift

let TestList = "Array Bundle CoreGraphics Dates Network Point Range String SwiftIfCase Translate View " +
            "AD CrashReport InApp Updater"

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
........................................................................................
Finished in 0.0252 seconds.
40 tests, 88 assertions, 0 failures, 0 errors
```
