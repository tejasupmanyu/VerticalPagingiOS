//
//  DailyCollectionViewController.swift
//  VerticalTry
//
//  Created by Tejas Upmanyu on 30/07/17.
//  Copyright © 2017 VisionArray. All rights reserved.
//

import UIKit

class DailyViewController: UIViewController {
    let cellScaling : CGFloat = 0.8
    var images = ["q1.jpg","q2.jpg","q3.jpg","q4.jpg","8","10","11","19","24","30","49"]
    @IBOutlet weak var ContentCollectionView : UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ContentCollectionView.dataSource = self
        ContentCollectionView.delegate = self
        ContentCollectionView.isPagingEnabled = true
       
    }
}

extension DailyViewController : UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = ContentCollectionView.dequeueReusableCell(withReuseIdentifier: "DailyCell", for: indexPath) as? ContentDailyCollectionViewCell
        {
            cell.contentImageView.image = UIImage(named: images[indexPath.row])
            return cell
        }
        else
        {
            return UICollectionViewCell()
        }
    }
 
}

extension DailyViewController : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = UIScreen.main.bounds.size.width*0.9
        let cellHeight = UIScreen.main.bounds.size.height*0.75
        return CGSize(width: cellWidth, height: cellHeight)
        
    }
}

extension DailyViewController : UIScrollViewDelegate
{

}
