//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Jatin patel on 11/1/15.
//  Copyright © 2015 Jatin patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.registerNib(UINib(nibName: "MyCustomCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCustomCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
}

// MARK: Collection view delegate and datasource
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCustomCell", forIndexPath: indexPath) as! MyCustomCellCollectionViewCell
        cell.nameLabel.text = "Jatin\(indexPath.item)"
        cell.delegate = self
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 120, height: 179)
    }
    
}

extension ViewController: MyCustomCellCollectionViewCellDelegate {
    func didCellButtonTapped(cell: MyCustomCellCollectionViewCell) {
        let item = collectionView.indexPathForCell(cell)
        print("cell selected \(item?.item)")
    }
}

