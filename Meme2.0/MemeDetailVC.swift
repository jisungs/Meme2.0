//
//  MemeDetailVC.swift
//  Meme2.0
//
//  Created by The book on 2018. 1. 20..
//  Copyright © 2018년 The book. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailVC : UIViewController {
    
    var memes = [Meme]()
    
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeLabel : UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
}
