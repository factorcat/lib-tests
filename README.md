```swift

let TestList = "Array Bundle CoreGraphics Dates Network Object Point Range String SwiftGuard SwiftIfCase Translate View " +
               "AD CrashReport InApp Updater"

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let result = UnitTest.run(only:
            TestList
            .split(by: .space).map{ x in "Test\(x)"})
        if result.failed > 0 {
            self.view.backgroundColor = .rgb255(215,50,50)
        } else if result.passed > 0 {
            self.view.backgroundColor = .rgb255(0,155,0)
        }
    }
}
```


```sh
Started
.................................................................................................................
Finished in 0.0115 seconds.
49 tests, 113 assertions, 0 failures, 0 errors
```
