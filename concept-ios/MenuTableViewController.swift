//
//  MenuTableViewController.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 04/05/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: - Table view data source

	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 6
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

		if indexPath.row == 0 {
			let cell = tableView.dequeueReusableCellWithIdentifier("logoCell", forIndexPath: indexPath) as UITableViewCell
			return cell
		}
		if indexPath.row == 1 {
			let cell = tableView.dequeueReusableCellWithIdentifier("AdFormTableViewCell", forIndexPath: indexPath) as! AdFormTableViewCell
			return cell
		}
		if indexPath.row == 2 {
			let cell = tableView.dequeueReusableCellWithIdentifier("AppNexusTableViewCell", forIndexPath: indexPath) as! AppNexusTableViewCell
			return cell
		}
		if indexPath.row == 3 {
			let cell = tableView.dequeueReusableCellWithIdentifier("DfpTableViewCell", forIndexPath: indexPath) as! DfpTableViewCell
			return cell
		}
		if indexPath.row == 4 {
			let cell = tableView.dequeueReusableCellWithIdentifier("PolarTableViewCell", forIndexPath: indexPath) as! PolarTableViewCell
			return cell
		} else {
			let cell = tableView.dequeueReusableCellWithIdentifier("SitesAndAppsTableViewCell", forIndexPath: indexPath) as! SitesAndAppsTableViewCell
			return cell
		}

	}

	override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return 80
	}

	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return UITableViewAutomaticDimension
	}

}
