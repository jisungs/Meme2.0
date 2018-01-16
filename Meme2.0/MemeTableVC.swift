//
//  MemeTableVC.swift
//  Meme2.0
//
//  Created by The book on 2018. 1. 14..
//  Copyright © 2018년 The book. All rights reserved.
//

import Foundation
import UIKit

class MemeTableVc : UITableViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var memes = [Meme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        memes = appDelegate.memes
    }
    
    
}
