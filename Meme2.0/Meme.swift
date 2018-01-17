//
//  Meme.swift
//  Meme2.0
//
//  Created by 김해겸 on 2018. 1. 17..
//  Copyright © 2018년 The book. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topText: String!
    var bottomText: String!
    var image: UIImage!
    var memedImage: UIImage!
    
    init(top: String, bottom: String, image: UIImage, memedImage: UIImage) {
        self.topText = top
        self.bottomText = bottom
        self.image = image
        self.memedImage = memedImage
    }
}

