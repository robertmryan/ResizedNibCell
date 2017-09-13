//
//  Cell.swift
//  MyApp
//
//  Created by Robert Ryan on 9/11/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var overflowButton: UIButton!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var postedAgo: UILabel!
    @IBOutlet weak var postTitleWebView: UIWebView!
    @IBOutlet weak var contentHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postImageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var notedLabel: UILabel!
    @IBOutlet weak var noteButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    
    @IBAction func clickAction(_ sender: Any) {
    }
}
