//
//  ViewController.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 04/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit

class LaunchCV: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //Do launch animations here
        self.performSegueWithIdentifier("LaunchToHome", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}
