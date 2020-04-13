//
//  ViewController.swift
//  universalPOC
//
//  Created by Vanoshan  Ramdhani on 2020/04/07.
//  Copyright © 2020 Vanoshan  Ramdhani. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UIViewController {
    let names = ["van","the","man","the","man","the","man","the","man","the","man","the","man"]
    
    let collectionView:UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.isPagingEnabled = true
        return cv
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.customCellIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        // Do any additional setup after loading the view.
    }
}


