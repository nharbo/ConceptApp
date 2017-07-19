//
//  AppNexusVC.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 04/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit
//import ANBannerAdView
//Imported #import "ANBannerAdView.h" with bridgning-header

class AppNexusVC: UIViewController {
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuButton.target = self.revealViewController()
        menuButton.action = #selector(self.revealViewController().revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        
//        // Get the screen size so we can center our 300x50 example ad.
//        let  screenRect  = UIScreen.mainScreen().bounds
//        let  centerX     = (screenRect.size.width / 2) - 150;
//        let  centerY     = (screenRect.size.height / 2) - 25;
//        
//        // Set up some sizing variables we'll need when we create our ad view.
//        let  rect  = CGRectMake(centerX, centerY, 300, 50)
//        let  size  = CGSizeMake(300, 50)
//        
//        // Create the banner ad view and add it as a subview.
//		let banner = ANBannerAdView(frame: rect, placementId: "1326299", adSize: size)
//		banner.rootViewController = self;
//		banner.autoRefreshInterval = 60 // Set to 0 to disable auto-refresh.
//        banner.placementId = "1326299"
//
//		// Load an ad!
//		banner.loadAd()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
