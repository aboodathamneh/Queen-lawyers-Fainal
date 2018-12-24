//
//  ViewControllerCollection.swift
//  Queen-lawyers
//
//  Created by Abdalrahman athamneh on 12/11/18.
//  Copyright © 2018 Abdalrahman athamneh. All rights reserved.
//

import UIKit

class ViewControllerCollection: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var array = ["First Cell"]
    
      var array1 = ["abood"]
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        CollectionView.delegate = self
        CollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imageCell.image = UIImage(named: array[indexPath.row])
        cell.lbl.text = array[indexPath.row]
        cell.lbl1.text = array1[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "ShowItem", sender: true)
    }
    
  }
