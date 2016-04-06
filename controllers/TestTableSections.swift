//
//  TestTableSections.swift
//  Test
//
//  Created by wookyoung on 4/6/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit


class TestTableSections: WTestCase {
    class OrganizeSettings: TableSectionItem {
        var title: String
        var rows: [TableRowItem]
        init() {
            self.title = ""
            self.rows = []
        }
        func cellForRowAtIndexPath(vc: UIViewController, _ cell: UITableViewCell?, indexPath: NSIndexPath) {
        }
        func didSelectRowAtIndexPath(vc: UIViewController, indexPath: NSIndexPath) {
        }
    }
    
    func test_tablesections() {
        let ts = TableSections(sections:
            [OrganizeSettings(), OrganizeUpgrade(), OrganizeAppInfo()])
        Assert.equal(3, ts.sections.count)
    }
}