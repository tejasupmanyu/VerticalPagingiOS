//
//  ContentDailyCollectionViewCell.swift
//  VerticalTry
//
//  Created by Tejas Upmanyu on 30/07/17.
//  Copyright © 2017 VisionArray. All rights reserved.
//

import UIKit

class ContentDailyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var contentImageView: UIImageView!

    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentImageView.layer.masksToBounds = true
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        
        
        
}
}
