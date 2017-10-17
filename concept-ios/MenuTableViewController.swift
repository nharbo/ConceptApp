//
//  MenuTableViewController.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 04/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let imageHeight:CGFloat = 150.0
    let OffsetSpeed: CGFloat = 25.0

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: - Table view data source

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 7
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		if indexPath.row == 0 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "logoCell", for: indexPath) as UITableViewCell
			return cell
		}
		if indexPath.row == 1 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "AdFormTableViewCell", for: indexPath) as! AdFormTableViewCell
			return cell
		}
		if indexPath.row == 2 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "AppNexusTableViewCell", for: indexPath) as! AppNexusTableViewCell
			return cell
		}
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ParallaxTableViewCell", for: indexPath) as! ParallaxTableViewCell
            cell.imageToShow = UIImage(named: "conceptLogo2") // Set your image
//            cell.parallaxHeightConstraint.constant = parallaxImageHeight
//            cell.topConstraint = parallaxOffsetFor(newOffsetY: tableView.contentOffset.y, cell: cell)
            return cell
        }
		if indexPath.row == 4 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "DfpTableViewCell", for: indexPath) as! DfpTableViewCell
			return cell
		}
		if indexPath.row == 5 {
			let cell = tableView.dequeueReusableCell(withIdentifier: "PolarTableViewCell", for: indexPath) as! PolarTableViewCell
			return cell
		} else {
			let cell = tableView.dequeueReusableCell(withIdentifier: "SitesAndAppsTableViewCell", for: indexPath) as! SitesAndAppsTableViewCell
			return cell
		}

	}

	override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
		return 80
	}

	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 50
	}
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("inside scroll")
        
        if let visibleCells = tableView.visibleCells as? [ParallaxTableViewCell] {
            print("inside scroll1111")
            for parallaxCell in visibleCells {
                print("inside scroll2222")
                let yOffset = ((tableView.contentOffset.y - parallaxCell.frame.origin.y) / imageHeight) * OffsetSpeed
                parallaxCell.offset(offset: CGPoint(x: 0.0, y: yOffset))
            }
        }
    }
    
//    // Change the ratio or enter a fixed value, whatever you need
//    var cellHeight: CGFloat {
//        return tableView.frame.width * 9 / 16
//    }
//
//    // Just an alias to make the code easier to read
//    var imageVisibleHeight: CGFloat {
//        return cellHeight
//    }
//
//    // Change this value to whatever you like (it sets how "fast" the image moves when you scroll)
//    let parallaxOffsetSpeed: CGFloat = 25
//
//    // This just makes sure that whatever the design is, there's enough image to be displayed, I let it up to you to figure out the details, but it's not a magic formula don't worry :)
//    var parallaxImageHeight: CGFloat {
//        let maxOffset = (sqrt(pow(cellHeight, 2) + 4 * parallaxOffsetSpeed * tableView.frame.height) - cellHeight) / 2
//        return imageVisibleHeight + maxOffset
//    }
//
//    // Used when the table dequeues a cell, or when it scrolls
//    func parallaxOffsetFor(newOffsetY: CGFloat, cell: UITableViewCell) -> CGFloat {
//        return ((newOffsetY - cell.frame.origin.y) / parallaxImageHeight) * parallaxOffsetSpeed
//    }
//
//    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let offsetY = tableView.contentOffset.y
//        for cell in tableView.visibleCells {
//            if let para = cell as? ParallaxTableViewCell {
//                para.topConstraint = parallaxOffsetFor(newOffsetY: offsetY, cell: cell)
//            }
//        }
//    }


}
