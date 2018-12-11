//
//  CollectionView.swift
//  Queen-lawyers
//
//  Created by Abdalrahman athamneh on 12/9/18.
//  Copyright © 2018 Abdalrahman athamneh. All rights reserved.
//

import UIKit

class CollectionView: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self as? UICollectionViewDelegate
        collectionView.dataSource = self as? UICollectionViewDataSource
    }
}
 var imager = ["Bulding"]
extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate{
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imager.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageColeection.image = UIImage(named: imager[indexPath.row])
        cell.lbl.text = imager[indexPath.row]
        return cell
    }


}

