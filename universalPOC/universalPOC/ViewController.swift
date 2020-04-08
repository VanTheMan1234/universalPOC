//
//  ViewController.swift
//  universalPOC
//
//  Created by Vanoshan  Ramdhani on 2020/04/07.
//  Copyright © 2020 Vanoshan  Ramdhani. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
    
    let customCellIdentifier = "customCellIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .red
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
        // Do any additional setup after loading the view.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath)
        return customCell
    }


}

class CustomCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom Text"
        return label
    
    }()
    
    func setUpView(){
        addSubview(nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: <#T##String#>, options: <#T##NSLayoutConstraint.FormatOptions#>, metrics: <#T##[String : Any]?#>, views: <#T##[String : Any]#>))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

