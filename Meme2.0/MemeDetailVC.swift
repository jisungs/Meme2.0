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
    var image : UIImage?
    
<<<<<<< HEAD
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeLabel : UILabel!
=======
    @IBOutlet weak var imageView: UIImageView!

>>>>>>> db8c207a52ac98eef261b5eb787aa6105badcf76
    
   /* override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
<<<<<<< HEAD
        self.tabBarController?.tabBar.isHidden = true
=======
        if let memeImage = image {
            imageView.image = memeImage
        }
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let memeImage = image {
            imageView.image = memeImage
        }
>>>>>>> db8c207a52ac98eef261b5eb787aa6105badcf76
    }
    
}
