//
//  Footer.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 2.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit

class Footer : UIView {
    
    var label = UILabel()
    var footerLine = Line()
    var footerButton = Button()
    
    func setFooterView(text : String){
        
        self.addSubview(label)
        self.addSubview(footerLine)
        self.addSubview(footerButton)
        
        label.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(25)
            make.height.equalTo(12)
        }
        label.font =  UIFont(name: "Avenir-Black", size: 12.0)!
        label.textColor = UIColor(red: 68.0 / 255.0, green: 3.0 / 255.0, blue: 68.0 / 255.0, alpha: 1.0)
        label.text = text
        
        
        
        footerButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(-25)
            make.width.height.equalTo(10)
        }
        footerButton.setRightButton(imageName: "right")
        
        footerLine.snp.makeConstraints { (make) in
            make.top.equalTo(label.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.height.equalTo(5)
        }
        footerLine.setLine(width: 5)
    }
}
