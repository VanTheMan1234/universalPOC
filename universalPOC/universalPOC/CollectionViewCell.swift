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
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    
    }()
    
    let nameLabel2: UILabel = {
        let label = UILabel()
        label.text = "Avaliable"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    
    }()
    
    let imageView: UIImageView = {
        var imageView : UIImageView
        imageView  = UIImageView(frame:CGRect(x: 10, y: 30, width: 100, height: 50));
        imageView.image = UIImage(named:"image.jpg")
        return imageView
    }()
    
    let enterButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .black
        button.setTitle("View", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    
    }()
    
    @objc func buttonAction(sender: UIButton!) {
      print("Button tapped")
    }
    
    func setUpView(){
        
        backgroundColor = .red
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        addSubview(nameLabel2)
        nameLabel2.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        nameLabel2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        nameLabel2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5).isActive = true
        nameLabel2.widthAnchor.constraint(equalToConstant: 90).isActive = true

        
        
        addSubview(enterButton)
        let buttonSize = CGFloat(40)
        enterButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        enterButton.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
        enterButton.rightAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.rightAnchor, constant: -5).isActive = true
        enterButton.leftAnchor.constraint(equalTo: nameLabel.safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        enterButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        enterButton.heightAnchor.constraint(equalToConstant: buttonSize).isActive = true
        
        addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        imageView.bottomAnchor.constraint(equalTo: nameLabel.safeAreaLayoutGuide.topAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
