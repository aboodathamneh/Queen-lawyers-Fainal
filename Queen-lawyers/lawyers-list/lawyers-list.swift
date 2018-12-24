//
//  lawyers-list.swift
//  Queen-lawyers
//
//  Created by Abdalrahman athamneh on 12/12/18.
//  Copyright © 2018 Abdalrahman athamneh. All rights reserved.
//

import UIKit

class lawyers_list: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var array = ["Facebook"]
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lawyersList", for: indexPath) as! Lawyers_List_Cell
        cell.lawyersImage.image = UIImage(named: array[indexPath.row])
//        cell.nameCity.text = array[indexPath.row]
        cell.lawyersImage.layer.cornerRadius = cell.lawyersImage.frame.size.width/3
        cell.lawyersImage.clipsToBounds = true
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    
//        self.performSegue(withIdentifier: "ShowItem", sender: true)
//    }
    
}
