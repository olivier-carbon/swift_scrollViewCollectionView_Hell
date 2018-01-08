//
//  TestViewController.swift
//  BreakMyViews
//
//  Created by Olivier Butler on 08/01/2018.
//  Copyright © 2018 Olivier Butler. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.beHappy()
        collectionView.dataSource = self
        collectionView.delegate = self
        let layout = CustomFlowLayout()
        collectionView.collectionViewLayout = layout
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NSLayoutConstraint(item: self.collectionView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.collectionView.collectionViewLayout.collectionViewContentSize.height).isActive = true
    }
    
    func beHappy() {
        print("I am happy")
    }
}

extension TestViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let newCell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        newCell.backgroundColor = UIColor.orange
        return newCell
    }
}

extension TestViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: UIScreen.main.bounds.size.width, height: 150)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You tapped me. I am \(indexPath)")
    }
}
