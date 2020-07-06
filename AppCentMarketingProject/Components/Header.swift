//
//  Header.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 3.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


class Header : UIView {
    
    
    var headerView = UIView()
    var headerBackgroundImage = UIImageView()
    var headerIconImage = UIImageView()
    var line = UIView()
    var headerIconImage2 = UIImageView()
    
    
    func setHeader(){
        
        self.addSubview(headerView)
        headerView.addSubview(headerBackgroundImage)
        headerView.addSubview(headerIconImage)
        headerView.addSubview(line)
        headerView.addSubview(headerIconImage2)
        
        
        headerView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        headerBackgroundImage.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
        headerBackgroundImage.image = UIImage(named: "rectangleCopy5RectangleCopy5RectangleCopy5GroupMask")
        
        headerIconImage.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(37)
            make.width.equalTo(70)
            make.height.equalTo(57)
        }
        headerIconImage.image = UIImage(named: "xco2018Logo")
        
        line.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(102)
            make.top.equalToSuperview().offset(51)
            make.width.equalTo(1)
            make.height.equalTo(30)
        }
        line.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        headerIconImage2.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(115)
            make.top.equalToSuperview().offset(37)
            make.width.equalTo(122)
            make.height.equalTo(57)
        }
        headerIconImage2.image = UIImage(named: "mt1Haz02")
    }
    
    
    
    
}



