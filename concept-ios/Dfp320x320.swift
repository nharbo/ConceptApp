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

        adView.adUnitID = "/5706918/concept_app_mob1"
        adView.rootViewController = self
        adView.delegate = self
        adView.adSizeDelegate = self
        
        adView.validAdSizes = [NSValueFromGADAdSize(kGADAdSizeMediumRectangle), NSValueFromGADAdSize(GADAdSizeFromCGSize(CGSize(width: 320, height: 320)))] //300x250
        
        
        adView.load(DFPRequest())
        
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

}

extension Dfp320x320: GADBannerViewDelegate {
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print(error.description)
    }

	func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        
        print("-- \(bannerView.adSize) --")
		print("Banner adapter class name: \(bannerView.adNetworkClassName!)")
	}

	func interstitialDidReceiveAd(_ ad: GADInterstitial) {
		print("Interstitial adapter class name: \(ad.adNetworkClassName)")
	}

}

extension Dfp320x320: GADAdSizeDelegate {
    func adView(_ bannerView: GADBannerView, willChangeAdSizeTo size: GADAdSize) {
        print("willChangeAdSizeTo: \(size)")
    }
    
}


//extension Dfp320x320: GADCustomEventBannerDelegate {
//
//    func customEventBanner(customEvent: GADCustomEventBanner, didReceiveAd view: UIView) {
//        print("didReceiveAd")
//    }
//
//    func customEventBanner(customEvent: GADCustomEventBanner, didFailAd error: NSError?) {
//        print(error?.description)
//    }
//
//    func customEventBannerWasClicked(customEvent: GADCustomEventBanner) {
//        print("Banner clicked")
//    }
//
//    func adViewWillLeaveApplication(bannerView: GADBannerView) {
//        print("adViewWillLeaveApplication")
//    }
//
//    func customEventBannerDidDismissModal(customEvent: GADCustomEventBanner) {
//        print("customEventBannerDidDismissModal")
//    }
//
//    func customEventBanner(customEvent: GADCustomEventBanner, clickDidOccurInAd view: UIView) {
//
//    }
//
//
//}
