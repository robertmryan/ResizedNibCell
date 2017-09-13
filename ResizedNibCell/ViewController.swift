//
//  ViewController.swift
//  ResizedNibCell
//
//  Created by Robert Ryan on 9/11/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(UINib(nibName: "Cell", bundle: nil), forCellWithReuseIdentifier: "softBoardPostCell")
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = CGSize(width: collectionView!.bounds.width - 50, height: 416)
        layout.itemSize = UICollectionViewFlowLayoutAutomaticSize
    }
    
}

// MARK: - UICollectionViewDataSource

extension ViewController {
    
    // just create ten cells
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    // don't worry about the data, but adjust constraints based upon the size of the view
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "softBoardPostCell", for: indexPath) as! Cell
        
        cell.widthConstraint.constant = collectionView.bounds.width - 50
        cell.contentHeightConstraint.constant = collectionView.bounds.height / 4
        cell.postImageHeightConstraint.constant = collectionView.bounds.height / 4
        
        return cell
    }

}

