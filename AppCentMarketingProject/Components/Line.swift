//
//  Line.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 2.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit

class Line : UIView {
    
    func setLine(width : Int){
        self.snp.makeConstraints { (make) in
            make.height.equalTo(5)
            make.width.equalTo(width)
           
        }
        self.backgroundColor = UIColor.black
    }
        
}
