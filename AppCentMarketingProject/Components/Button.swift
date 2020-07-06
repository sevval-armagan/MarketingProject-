//
//  Button.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 2.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit

class Button : UIButton{
    
    var imageName = String()
    var text = String()
    func setRightButton(imageName: String){
        self.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 16)
        self.setImage(UIImage(named: imageName), for: .normal)
        self.setTitleColor(UIColor.white, for: .normal)
    }
}
