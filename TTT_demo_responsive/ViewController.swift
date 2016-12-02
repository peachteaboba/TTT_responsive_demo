//
//  ViewController.swift
//  TTT_demo_responsive
//
//  Created by Andy Feng on 12/2/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Outlets -------------------------------------------------
    
    // Top title view
    @IBOutlet weak var topTitleView: UIView!
    
    // Stack iew
    @IBOutlet weak var stackView: UIStackView!
    
    // Winner view
    @IBOutlet weak var winnerView: UIView!
    
    // Reset view
    @IBOutlet weak var resetView: UIView!
    
    
    
    
    
    // MARK: - Outlet Constraints -------------------------------------------------
    
    // Stack view constraints
    @IBOutlet weak var stackViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackViewLeadingConstraint: NSLayoutConstraint!
    
    
    // Top view constraints
    @IBOutlet weak var topViewTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var topViewHeightConstraint: NSLayoutConstraint!
    
    // Winner view
    @IBOutlet weak var winnerViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var winnerViewTrailingConstraint: NSLayoutConstraint!
    
    
    // Reset view
    @IBOutlet weak var resetViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var resetViewTrailingConstraint: NSLayoutConstraint!
    
    
    
    
    
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // code to handle rotation details

        let height = self.view.frame.height
        let width = self.view.frame.width
        
        
        
        print("it rotated")
        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
            print("Landscape")
            
            // We know it's landscape :::::::::::::::::::::
            
            // Stack view
            self.stackViewTopConstraint.constant = 0
            self.stackViewLeadingConstraint.constant = width / 2
            self.stackViewBottomConstraint.constant = 0
            
            
            // Top View
            self.topViewTrailingConstraint.constant = width / 2
            self.topViewHeightConstraint.constant = height * 0.3
            self.topTitleView.isHidden = true

            
            // Winner View
            self.winnerViewTrailingConstraint.constant = width / 2
            self.winnerViewHeightConstraint.constant = height * 0.4
            
            // Reset View
            self.resetViewTrailingConstraint.constant = width / 2
            self.resetViewHeightConstraint.constant = height * 0.3
            
            
            
            
        } else {
            // portrait
            self.initialStyles()
        }
        
        
        
        
    }
    
    
    
    
    
    
    // helper function
    func initialStyles(){
        
        let height = self.view.frame.height
    
        
        
        // Stack view
        self.stackViewTopConstraint.constant = height * 0.1
        self.stackViewLeadingConstraint.constant = 0
        self.stackViewBottomConstraint.constant = height * 0.3
        
        // Top View
        self.topViewTrailingConstraint.constant = 0
        self.topViewHeightConstraint.constant = height * 0.1
        self.topTitleView.isHidden = false
        
        // Winner View
        self.winnerViewTrailingConstraint.constant = 0
        self.winnerViewHeightConstraint.constant = height * 0.2
        
        // Reset View 
        self.resetViewTrailingConstraint.constant = 0
        self.resetViewHeightConstraint.constant = height * 0.1
        
        
        
        
    }
    
    
    
    // MARK: - UI Lifecycle ----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.initialStyles()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

