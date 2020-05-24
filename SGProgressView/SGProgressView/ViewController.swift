//
//  ViewController.swift
//  SGProgressView
//
//  Created by Sunil Gupta on 23/05/20.
//  Copyright © 2020 Sunil Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- VC Outlets
    @IBOutlet weak var dummyView: UIView!
    
    //MARK:- VC lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK:- VC action methods
    @IBAction func onTapShowLoader(_ sender: Any) {
        ProgressIndicatorView.addLoadingView(sourceView: self.view, isTabBarView: false, alpha: 0.5)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            ProgressIndicatorView.removeLoadingView(sourceView: self.view)
        }
    }
    
    @IBAction func onTapShowLoaderWithMessage(_ sender: Any) {
        ProgressIndicatorView.addLoadingView(sourceView: self.view, withMessage: "Loading...", isTabBarView: false)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            ProgressIndicatorView.removeLoadingView(sourceView: self.view)
        }
    }
    
    @IBAction func onTapShowLoaderOnView(_ sender: Any) {
        ProgressIndicatorView.addLoadingView(sourceView: dummyView, isTabBarView: false)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            ProgressIndicatorView.removeLoadingView(sourceView: self.dummyView)
        }
    }
}
