//
//  TestTableSections.swift
//  Test
//
//  Created by wookyoung on 4/6/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import UIKit

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



class TableSectionViewController: UITableViewController {
    var ts: TableSections? = TableSections(sections:
        [OrganizeSettings(), OrganizeUpgrade(), OrganizeAppInfo()])

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return ts!.sections.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ts!.sections[section].rows.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        if nil == cell {
            cell = UITableViewCell(style: .Value1, reuseIdentifier: cellIdentifier)
        }
        ts!.sectionitemof(indexPath).cellForRowAtIndexPath(self, cell, indexPath: indexPath)
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        ts!.sectionitemof(indexPath).didSelectRowAtIndexPath(self, indexPath: indexPath)
    }
}



class TestTableSections: WTestCase {
    
    func test_tablesections() {
        let vc = TableSectionViewController()
        Assert.equal(3, vc.ts!.sections.count)
    }
}