//
//  CollectionView.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 4.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class CollectionView : UIView, UICollectionViewDelegate {
    
    let collectionViewView = UIView()
    let yellowView = UIView()
    
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cView =  UICollectionView(frame: .zero, collectionViewLayout: layout)
        cView.translatesAutoresizingMaskIntoConstraints = false
        cView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        return cView
    }()
    
    
    func setCollectionView(){
        self.addSubview(collectionViewView)
        
        collectionViewView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(371)
        }
        
        collectionViewView.addSubview(yellowView)
        yellowView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(collectionViewView.snp.top).offset(53)
            make.height.equalTo(265)
        }
        yellowView.backgroundColor = UIColor(red: 255/255, green: 207/255, blue: 32/255, alpha: 1)
        
        collectionViewView.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalTo(collectionViewView)
        }
    }
}
