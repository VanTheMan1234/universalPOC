//
//  ViewController.swift
//  universalPOC
//
//  Created by Vanoshan  Ramdhani on 2020/04/07.
//  Copyright © 2020 Vanoshan  Ramdhani. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
    let names = ["SpiderMan","Her","The Blind Side","Batman","Marriage Story","Avengers","The Lighthouse", "Parasite"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.customCellIdentifier)
    }
}


