//
//  CollectionViewCell.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 2.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    let Label = UILabel()
    let button = Button()
    
    override init(frame : CGRect){
        super.init(frame : frame)
        set()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(){
        Label.snp.makeConstraints { (make) in
            self.contentView.addSubview(Label)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            make.top.equalTo(contentView.snp.top).offset(15)
            make.width.equalTo(89)
        }
        Label.lineBreakMode = .byWordWrapping
        Label.font =  UIFont(name: "Avenir-Black", size: 12.0)!
        Label.textColor = UIColor(red: 68.0 / 255.0, green: 3.0 / 255.0, blue: 68.0 / 255.0, alpha: 1.0)
        self.contentView.addSubview(button)
        button.setRightButton(imageName: "right")
        button.snp.makeConstraints { (make) in
            make.trailing.equalTo(contentView.snp.trailing).offset(-15)
            make.bottom.equalTo(contentView.snp.bottom).offset(-15)
            make.width.height.equalTo(10)
        }
        
        
    }
    
    
    
}
