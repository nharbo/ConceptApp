//
//  Dfp320x160.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 16/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Dfp320x160: UIViewController {
    
    @IBOutlet weak var adView: DFPBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        adView.adUnitID = "/5706918/concept_app_mob1"
        
        adView.rootViewController = self
        adView.load(DFPRequest())
        adView.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension Dfp320x160: GADBannerViewDelegate {
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print(error.description)
    }
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("Banner adapter class name: \(bannerView.adNetworkClassName!)")
    }
    
    func interstitialDidReceiveAd(_ ad: GADInterstitial) {
        print("Interstitial adapter class name: \(String(describing: ad.adNetworkClassName))")
    }
    
}
