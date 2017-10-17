//
//  AdFormCustomEventBanner.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 04/10/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import Foundation
import GoogleMobileAds
import UIKit

//Vigtigt med @objc og public, for at DFP kan genkende klassen!
@objc public class AdformCustomEventBanner: UIViewController, GADCustomEventBanner, AFAdInlineDelegate {
    
    public weak var delegate: GADCustomEventBannerDelegate?
    
   
    
    
    public func requestAd(_ adSize: GADAdSize, parameter serverParameter: String?, label serverLabel: String?, request: GADCustomEventRequest) {

        print("requestAd, Custom Event received!")
        print("parameter: \(serverParameter!)")
        print("label: \(serverLabel!)")
        print("request: \(request)")
 
        //Make AdForm ad-request here, and return it back to DFP (??)
        let tag = "\(serverParameter!)"
        print("TAG::::::::::: \(tag)")
        let tagInt = Int(tag)
        print("111111")
        let adView = AFAdInline(masterTagId: tagInt!, presenting: self, adSize: CGSize(width: 320, height: 320))!
        adView.delegate = self
        print("2222  \(adView.delegate)")
        adView.loadAd()
        adView.showAd()
        print("3333 \(adView.isLoaded)")

        
    }
    
    public func adInlineWillShow(_ adInline: AFAdInline!) {
        print("adInlineWillShow")
    }
    
    public func adInlineDidLoadAd(_ adInline: AFAdInline!) {
        print("adInlineDidLoadAd")
    }
    
    public func adInlineWillHide(_ adInline: AFAdInline!) {
        print("adInlineWillHide")
    }
    
    public func adInlineDidFail(toLoadAd adInline: AFAdInline!, withError error: Error!) {
        print("adInlineDidFail - \(error.localizedDescription)")
    }
    
}

//extension NSObject {
//    class func swiftClassFromString(className: String) -> AnyClass! {
//        if var appName: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String {
//            let fAppName = appName.replacingOccurrences(of: " ", with: "_", options: NSString.CompareOptions.literal, range: nil)
//            return NSClassFromString("\(fAppName).\(className)")
//        }
//        return nil
//    }
//}

//extension AdformCustomEventBanner: AFAdInlineDelegate {
//
//    public func adInlineWillShow(_ adInline: AFAdInline!) {
//        print("adInlineWillShow")
//    }
//
//    public func adInlineDidLoadAd(_ adInline: AFAdInline!) {
//        print("adInlineDidLoadAd")
//    }
//
//    public func adInlineWillHide(_ adInline: AFAdInline!) {
//        print("adInlineWillHide")
//    }
//
//    public func adInlineDidFail(toLoadAd adInline: AFAdInline!, withError error: Error!) {
//        print("adInlineDidFail - \(error.localizedDescription)")
//    }
//
//}

