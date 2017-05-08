//
//  Dfp320_320.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 08/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Dfp320x320: UIViewController {
    
    @IBOutlet weak var adView: DFPBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adView.adUnitID = "/6499/example/banner"
        adView.rootViewController = self
//        adView.loadRequest(DFPRequest())
        
        //This is just for testing
        let request: GADRequest = GADRequest()
        request.testDevices = ["e31b3282865187f17443d3b10e73c949", kGADSimulatorID]
        adView.loadRequest(request)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
