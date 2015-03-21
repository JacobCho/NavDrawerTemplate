//
//  CenterViewController.swift
//  NavDrawerTemplate
//
//  Created by Jacob Cho on 2015-03-21.
//  Copyright (c) 2015 Jacob. All rights reserved.
//

import UIKit

@objc
protocol CenterViewControllerDelegate {
    optional func toggleLeftPanel()
    
}

class CenterViewController: UIViewController, NavDrawerViewControllerDelegate {
    
    var delegate : CenterViewControllerDelegate?
    var navDrawerViewController : NavDrawerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewA = DummyViewControllerA()
        displayContentController(viewA)

        var navBarButton = UIBarButtonItem(image: UIImage(named: "hamburger"), style: UIBarButtonItemStyle.Plain, target: self, action: "navDrawerButtonPressed:")
        navigationItem.leftBarButtonItem = navBarButton
    }
    
    func displayContentController(content: UIViewController) {
        self.addChildViewController(content)
        content.view.frame = self.view.frame
        self.view.addSubview(content.view)
        content.didMoveToParentViewController(self)
        
    }
    
    func hideContentController(content: UIViewController) {
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
        
    }
    
    // MARK: NavDrawerViewController Delegate Methods
    
    func navDrawerButtonPressed(sender: UIBarButtonItem) {
    delegate?.toggleLeftPanel?()
    }

    // If creating view controllers with story board, use UIStoryboard.instantiateViewControllerWithIdentifier
    func goToA() {
        let viewA = DummyViewControllerA()
        displayContentController(viewA)
        self.hideContentController(self.childViewControllers[0] as UIViewController)
        delegate?.toggleLeftPanel?()
    }
    
    func goToB() {
        let viewB = DummyViewControllerB()
        displayContentController(viewB)
        self.hideContentController(self.childViewControllers[0] as UIViewController)
        delegate?.toggleLeftPanel?()
    }
    
    func goToC() {
        let viewC = DummyViewControllerC()
        displayContentController(viewC)
        self.hideContentController(self.childViewControllers[0] as UIViewController)
        delegate?.toggleLeftPanel?()
    }

}
