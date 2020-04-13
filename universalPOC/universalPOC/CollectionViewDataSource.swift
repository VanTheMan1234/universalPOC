//
//  CollectionViewDataSource.swift
//  universalPOC
//
//  Created by Vanoshan  Ramdhani on 2020/04/14.
//  Copyright © 2020 Vanoshan  Ramdhani. All rights reserved.
//

import Foundation
import UIKit

extension CustomCollectionViewController:  UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
            
         func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return names.count
        }
        
         func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.customCellIdentifier, for: indexPath) as! CollectionViewCell
            customCell.nameLabel.text = names[indexPath.item]
            return customCell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width - 50, height: 200)
        }
    
}
