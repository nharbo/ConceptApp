//
//  Dfp300x250.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 08/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit
import GoogleMobileAds
import WebKit

class Dfp300x250: UIViewController {

	@IBOutlet weak var adView: DFPBannerView!

	override func viewDidLoad() {
		super.viewDidLoad()

		adView.adUnitID = "/5706918/concept_app_mob1"
//        adView.validAdSizes = [NSValueFromGADAdSize(GADAdSizeFromCGSize(CGSize(width: 320, height: 320))), NSValueFromGADAdSize(kGADAdSizeMediumRectangle)] //300x250
        adView.rootViewController = self
		adView.load(DFPRequest())
        adView.delegate = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

}

extension Dfp300x250: GADBannerViewDelegate {
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print(error.description)
    }
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        
        print("-- \(bannerView.adSize) --")
        print("Banner adapter class name: \(bannerView.adNetworkClassName!)")
    }
    
    func interstitialDidReceiveAd(_ ad: GADInterstitial) {
        print("Interstitial adapter class name: \(String(describing: ad.adNetworkClassName))")
    }
    
}
