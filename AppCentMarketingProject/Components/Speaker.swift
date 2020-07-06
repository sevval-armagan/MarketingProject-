//
//  Speaker.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 3.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class Spaeker : UIView {
    
    
    let speakerView = UIView()
    let speakerLabel = UILabel()
    let allSpeakerLabel = UILabel()
    let speakerButton = Button()
    let speakerScrollView =  UIScrollView()
    let speakerStackView = UIStackView()
    
    
    
    func setSpeaker(){
        
        self.addSubview(speakerView)
        
        speakerView.snp.makeConstraints { (make) in
            make.leading.trailing.bottom.equalToSuperview()
                   make.height.equalTo(260)
               }
        
        
        
        speakerView.addSubview(speakerLabel)
        speakerLabel.snp.makeConstraints { (make) -> Void  in
            //  make.top.equalTo(collectionViewView.snp.bottom).offset(33)
            make.leading.equalToSuperview().offset(0)
            make.width.equalTo(116)
            make.height.equalTo(14)
        }
        speakerLabel.text =  "KONUŞMACILAR"
        speakerLabel.font =  UIFont(name: "Avenir-Black", size: 14.0)!
        speakerLabel.textColor = UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
        speakerLabel.textAlignment = .center
        speakerLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        speakerView.addSubview(allSpeakerLabel)
        allSpeakerLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(speakerLabel.snp.trailing).offset(77)
            //   make.top.equalTo(collectionViewView.snp.bottom).offset(33)
            make.width.equalTo(117)
        }
        allSpeakerLabel.font =  UIFont(name: "Avenir-Black", size: 12.0)!
        allSpeakerLabel.textColor = UIColor(red: 68.0 / 255.0, green: 3.0 / 255.0, blue: 68.0 / 255.0, alpha: 1.0)
        allSpeakerLabel.text = "Tüm Konuşmacılar"
        
        speakerView.addSubview(speakerButton)
        speakerButton.snp.makeConstraints { (make) in
            make.leading.equalTo(allSpeakerLabel.snp.trailing).offset(5)
            //  make.top.equalTo(collectionViewView.snp.bottom).offset(33)
            make.trailing.equalToSuperview().offset(-25)
        }
        speakerButton.setRightButton(imageName: "right")
        
        
        
        speakerView.addSubview(speakerScrollView)
        paddingSpeakerScrollView()
        speakerScrollView.snp.updateConstraints { (make) in
            make.top.equalTo(speakerButton.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().offset(0)
            make.height.equalTo(207)
        }
        
        speakerScrollView.addSubview(speakerStackView)
        paddingSpeakerStackView()
        speakerStackView.backgroundColor = .yellow
        speakerStackView.snp.updateConstraints { (make) in
            make.leading.trailing.equalTo(0)
            make.trailing.equalTo(-20)
            make.top.equalTo(10)
        }
        
        for i in 0...4{
            createCastImage(i:i)
        }
        
        
    }
    
    func paddingSpeakerScrollView(){
        speakerScrollView.translatesAutoresizingMaskIntoConstraints = false
        speakerScrollView.showsHorizontalScrollIndicator = false
    }
    
    private func paddingSpeakerStackView(){
        speakerStackView.backgroundColor = .purple
        speakerStackView.axis = .horizontal
        speakerStackView.spacing = 10.0
        speakerStackView.alignment = .center
        speakerStackView.distribution = .equalSpacing
        speakerStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func createCastImage (i:Int){
        let createSpeakerImage = UIImageView()
        speakerStackView.addArrangedSubview(createSpeakerImage)
        
        createSpeakerImage.snp.updateConstraints { (make) in
            make.height.equalTo(207)
            make.width.equalTo(150)
        }
        
        
        createSpeakerImage.backgroundColor = UIColor.lightGray
        createSpeakerImage.layer.masksToBounds = true
        createSpeakerImage.contentMode = .scaleAspectFill
        
        
        
        let nameLabel = UILabel()
        speakerStackView.addSubview(nameLabel)
        nameLabel.textColor = .white
        nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.numberOfLines = 0
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        
        nameLabel.snp.updateConstraints { (make) in
            make.leading.trailing.equalTo(createSpeakerImage)
            make.bottom.equalTo(createSpeakerImage.snp_bottomMargin).offset(-5)
            make.height.equalTo(50)
            make.centerX.equalTo(createSpeakerImage)
            
        }
        
        nameLabel.text = "Şevval Armağan"
    }
    
}
