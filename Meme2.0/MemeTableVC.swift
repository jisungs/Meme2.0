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
        
    }
    
    override func viewWillAppear(_ animate: Bool){
        super.viewWillAppear(true)
        memes = appDelegate.memes
        
    }
    
    //Why it need "override"?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeTableCell", for : indexPath) as! MemeTableViewCell
        
        let meme = appDelegate.memes[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = meme.topText
        cell.imageView?.image = meme.memedImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "tableDelegateSegue", sender: self)
    }
    
    
}
