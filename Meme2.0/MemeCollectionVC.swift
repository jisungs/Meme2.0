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
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var memes = [Meme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setflowLayout()
        resetMeme()
        appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        resetMeme()
        collectionView?.reloadData()
    }
    
    func setflowLayout(){
        let space : CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = dimension
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
        
    }
   
    
    func resetMeme(){
        memes = appDelegate.memes
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "collectionDetailSegue" {
            if let indexPaths = collectionView?.indexPathsForSelectedItems {
                let indexPath = indexPaths[0]
                let vc = segue.destination as? MemeDetailVC
                vc!.image = memes[(indexPath as NSIndexPath).item].memedImage
            }
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let meme = memes[(indexPath as NSIndexPath).item]
        cell.MemeImageView.image = meme.memedImage
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "collectionDetailSegue", sender: self)
    }
    
}
