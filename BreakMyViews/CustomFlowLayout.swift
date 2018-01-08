//
//  CustomFlowLayout.swift
//  BreakMyViews
//
//  Created by Olivier Butler on 08/01/2018.
//  Copyright © 2018 Olivier Butler. All rights reserved.
//

import UIKit

class CustomFlowLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        self.setupLayout()
    }
    
    override var itemSize: CGSize {
        set {}
        get {
            let size = CGSize(width: UIScreen.main.bounds.size.width, height: 150)
            return size
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    
    func setupLayout(){
        self.minimumLineSpacing = 50
        self.minimumInteritemSpacing = 50
        self.scrollDirection = UICollectionViewScrollDirection.vertical
    }
}
