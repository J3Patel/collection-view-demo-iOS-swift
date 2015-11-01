//
//  MyCustomCellCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Jatin patel on 11/1/15.
//  Copyright © 2015 Jatin patel. All rights reserved.
//

import UIKit

protocol MyCustomCellCollectionViewCellDelegate {
    func didCellButtonTapped(cell: MyCustomCellCollectionViewCell)
}

class MyCustomCellCollectionViewCell: UICollectionViewCell {
    
    var delegate: MyCustomCellCollectionViewCellDelegate!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var openAccountButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func buttonClicked(sender: AnyObject) {
        delegate?.didCellButtonTapped(self)
    }

}
