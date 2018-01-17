//
//  MemeCollectionVC.swift
//  Meme2.0
//
//  Created by The book on 2018. 1. 14..
//  Copyright © 2018년 The book. All rights reserved.
//

import Foundation
import UIKit

class MemeCollectionVC : UICollectionViewController {
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var memes = [Meme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memes = appDelegate.memes
        
        let space : CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = dimension
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
        
    }
    
}
