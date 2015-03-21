//
//  NavDrawerViewController.swift
//  NavDrawerTemplate
//
//  Created by Jacob Cho on 2015-03-21.
//  Copyright (c) 2015 Jacob. All rights reserved.
//

import UIKit

@objc
protocol NavDrawerViewControllerDelegate {
    func goToA()
    func goToB()
    func goToC()
}

class NavDrawerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var delegate : NavDrawerViewControllerDelegate?
    let navArray = ["View A", "View B", "View C"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: Table View Data Source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell : NavDrawerTableViewCell = tableView.dequeueReusableCellWithIdentifier("NavDrawerCell", forIndexPath: indexPath) as NavDrawerTableViewCell
        
        let navItem = navArray[indexPath.row]
        cell.navLabel.text = navItem
        
        return cell
        
    }
    
    // Mark: Table View Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            self.delegate?.goToA()
        case 1:
            self.delegate?.goToB()
        case 2:
            self.delegate?.goToC()
        default:
            println(indexPath.row)
        }
    }

}
