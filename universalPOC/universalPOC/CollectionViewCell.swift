//
//  CollectionViewCell.swift
//  universalPOC
//
//  Created by Vanoshan  Ramdhani on 2020/04/14.
//  Copyright © 2020 Vanoshan  Ramdhani. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @objc static var customCellIdentifier = "customCellIdentifier"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom Text"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    
    }()
    
    let nameLabel2: UILabel = {
        let label = UILabel()
        label.text = "Custom Text"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    
    }()
    
    func setUpView(){
        
        backgroundColor = .red
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        //nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        
        addSubview(nameLabel2)
        nameLabel2.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        nameLabel2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        nameLabel2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        nameLabel2.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: -50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
