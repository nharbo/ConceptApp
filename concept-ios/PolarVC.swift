//
//  PolarVC.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 04/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit

class PolarVC: UIViewController {

    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuButton.target = self.revealViewController()
        menuButton.action = #selector(self.revealViewController().revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
