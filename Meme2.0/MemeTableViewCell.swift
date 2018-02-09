//
//  MemeTableViewCell.swift
//  Meme2.0
//
//  Created by 김해겸 on 2018. 1. 17..
//  Copyright © 2018년 The book. All rights reserved.
//

import Foundation
import UIKit

class MemeTableViewCell : UITableViewCell {
    var memes = [Meme]()
    
    @IBOutlet weak var memeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
