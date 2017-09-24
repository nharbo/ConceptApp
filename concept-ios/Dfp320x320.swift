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
    
    @IBOutlet weak var adSender: UILabel!

    //Reference til adview
	@IBOutlet weak var adView: DFPBannerView!
    
    weak var delegate: GADCustomEventBannerDelegate?
    
    //Referencer til adviewets størrelser - disse skal bruges til at resize view'et afhængig af hvilken størrelse banner der modtages.
    @IBOutlet weak var adViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var adViewWidthConstraint: NSLayoutConstraint!

	override func viewDidLoad() {
		super.viewDidLoad()

        //Ad-unit sættes her
        adView.adUnitID = "/5706918/concept_app_mob3"
        adView.rootViewController = self
        
        //OBS! Delegates skal sættes inden load-requestet køres.
        
        //Generel delegate
        adView.delegate = self
        
        //Delegate som køres inden en ad vises - denne gør det muligt at resize adview'et inden banneret vises, således view'et har den rigtige størrelse i forhold til banneret.
        adView.adSizeDelegate = self
        
        //Her defineres de størrelser ad-view'et skal kunne håndtere. I dette tilfælde 300x250 og 320x320. Det er ikke tilladt at "opfinde" størrelser selv.
        adView.validAdSizes = [NSValueFromGADAdSize(kGADAdSizeMediumRectangle), NSValueFromGADAdSize(GADAdSizeFromCGSize(CGSize(width: 320, height: 320)))] //300x250 og 320x320
        
        adView.load(DFPRequest())

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
    
}

extension Dfp320x320: GADBannerViewDelegate {
    
    //Hvis modtagelsen af et banner fejler, køres denne funktion
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print(error.description)
    }

    //Denne funktion køres når et banner er modtaget - her kan ses hvem der er afsender på banneret.
	func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        self.adSender.text = "\(bannerView.adNetworkClassName!)"
		print("Banner adapter class name: \(bannerView.adNetworkClassName!)")
	}

	func interstitialDidReceiveAd(_ ad: GADInterstitial) {
		print("Interstitial adapter class name: \(ad.adNetworkClassName)")
	}
    

}

extension Dfp320x320: GADAdSizeDelegate {
    
    //Denne funktion køres INDEN banneret vises - derfor kan adview'et resizes inden banneret vises.
    func adView(_ bannerView: GADBannerView, willChangeAdSizeTo size: GADAdSize) {
        print("willChangeAdSizeTo: \(size)")

        adViewHeightConstraint.constant = size.size.height
        adViewWidthConstraint.constant = size.size.width
        self.view.layoutIfNeeded()
        
        print("adView height now: \(self.adView.frame.size.height)")
        print("adView width now: \(self.adView.frame.size.width)")
        
    }
    
}

//MARK: - CLASS FOR CUSTOM EVENT
class AdformCustomEventBanner: NSObject, GADCustomEventBanner {
    
    weak var delegate: GADCustomEventBannerDelegate?
    
    func requestAd(_ adSize: GADAdSize, parameter serverParameter: String?, label serverLabel: String?, request: GADCustomEventRequest) {
        print("requestAd, Custom Event received!")
        
        //Make AdForm ad-request here, and return it back to DFP (??)
    }
    
}








//extension AdformCustomEventBanner: GADCustomEventBannerDelegate {
//
//    func customEventBanner(_ customEvent: GADCustomEventBanner, didFailAd error: Error?) {
//        print("Error, custom event: \(error?.localizedDescription)")
//    }
//
//    func customEventBanner(_ customEvent: GADCustomEventBanner, didReceiveAd view: UIView) {
//        print(view)
//    }
//
//    func customEventBannerWasClicked(_ customEvent: GADCustomEventBanner) {
//
//    }
//
//    func customEventBannerDidDismissModal(_ customEvent: GADCustomEventBanner) {
//
//    }
//
//    func customEventBannerWillDismissModal(_ customEvent: GADCustomEventBanner) {
//
//    }
//
//    func customEventBannerWillPresentModal(_ customEvent: GADCustomEventBanner) {
//
//    }
//
//    func customEventBannerWillLeaveApplication(_ customEvent: GADCustomEventBanner) {
//
//    }
//
//
//}







