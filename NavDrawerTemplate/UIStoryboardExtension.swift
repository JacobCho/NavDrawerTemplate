//
//  UIStoryboardExtension.swift
//  NavDrawerTemplate
//
//  Created by Jacob Cho on 2015-03-21.
//  Copyright (c) 2015 Jacob. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    class func mainStoryboard() -> UIStoryboard { return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()) }
    
    class func navDrawerViewController() -> NavDrawerViewController? {
        return mainStoryboard().instantiateViewControllerWithIdentifier("NavDrawerViewController") as? NavDrawerViewController
    }
    
    class func centerViewController() -> CenterViewController? {
        return mainStoryboard().instantiateViewControllerWithIdentifier("CenterViewController") as? CenterViewController
    }
    
}