//
//  ParallaxTableViewCell.swift
//  concept-ios
//
//  Created by Nicolai Harbo on 17/10/2017.
//  Copyright © 2017 nicowear. All rights reserved.
//

import UIKit

class ParallaxTableViewCell: UITableViewCell {
    
    var imageToShow: UIImage? {
        didSet {
            parallaxImageView.image = imageToShow
            parallaxImageView.contentMode = .scaleAspectFill
            parallaxImageView.clipsToBounds = false
        }
    }
//
//    var topConstraint: CGFloat? {
//        didSet {
//            print("TOPPP \(topConstraint)")
//            print("PARA TOP CONS \(parallaxTopConstraint)")
//            parallaxTopConstraint.constant = topConstraint!
//        }
//    }
    
    @IBOutlet weak var parallaxImageView: UIImageView!
    
    // MARK: ParallaxCell
    
    @IBOutlet weak var parallaxHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var parallaxTopConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        clipsToBounds = true

    }
    
    func offset(offset: CGPoint) {
        print("offsetoffsetoffset")
        parallaxImageView.frame.offsetBy(dx: offset.x, dy: offset.y)
//        CGRect(self.parallaxImageView.bounds, offset.x, offset.y)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
