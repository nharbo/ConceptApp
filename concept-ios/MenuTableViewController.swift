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

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 6
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
			let cell = tableView.dequeueReusableCell(withIdentifier: "DfpTableViewCell", for: indexPath) as! DfpTableViewCell
			return cell
		}
		if indexPath.row == 4 {
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
		return UITableViewAutomaticDimension
	}

}
