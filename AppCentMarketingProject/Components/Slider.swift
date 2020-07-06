//
//  Slider.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 3.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class Slider : UIView, UIScrollViewDelegate {
    
    var sliderView = UIView()
    var sliderScrollView =  UIScrollView()
    var sliderImage = UIImageView()
    var informationView = UIView()
    var informationLabelButton = Button()
    var informationLabel = UILabel()
    var pageControl = UIPageControl()
    
    
    
    
    func setSlider(text : String){
        self.addSubview(sliderView)
        sliderView.addSubview(sliderScrollView)
        sliderScrollView.addSubview(sliderImage)
        sliderScrollView.addSubview(informationView)
        informationView.addSubview(informationLabelButton)
        informationView.addSubview(informationLabel)
        sliderView.addSubview(pageControl)
        
        sliderView.backgroundColor = .systemPink
        sliderView.isUserInteractionEnabled = true
        sliderView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            //  make.top.equalTo(headerView.snp.bottom).offset(0) STACK VİEW YAPILACAK
            make.height.equalTo(500)
        }
        
        sliderView.addSubview(sliderScrollView)
        sliderScrollView.backgroundColor = .orange
        sliderScrollView.snp.updateConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
        
        sliderScrollView.delegate = self
        sliderScrollView.translatesAutoresizingMaskIntoConstraints = false
        sliderScrollView.showsHorizontalScrollIndicator = true
        sliderScrollView.isScrollEnabled = true
        
        sliderImage.backgroundColor = .cyan
        sliderImage.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalTo(sliderView).offset(0)
        }
        sliderImage.backgroundColor = .lightGray
        sliderImage.contentMode = .scaleAspectFill
        
        informationView.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(sliderView).offset(0)
            make.bottom.equalTo(sliderView.snp.bottom)
            make.height.equalTo(120)
        }
        informationView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
        
        informationLabelButton.snp.makeConstraints { (make) in
            make.leading.equalTo(informationLabel.snp.trailing).offset(6)
            make.top.equalTo(informationView).offset(25)
            // make.trailing.equalTo(informationView).offset(-50)
        }
        informationLabelButton.setTitleColor(.white, for: .normal)
        informationLabelButton.titleLabel?.lineBreakMode =  .byWordWrapping
        informationLabelButton.setRightButton(imageName: "white" )
        
        
        informationLabel.snp.makeConstraints { (make) -> Void  in
            make.top.equalTo(informationView).offset(24)
            make.leading.equalTo(informationView).offset(25)
            //  make.trailing.equalTo(timeViewBackgroundImage).offset(-46)
            make.width.equalTo(300)
            make.height.equalTo(24)
        }
        informationLabel.text =  text
        informationLabel.font =  UIFont(name: "Avenir-Black", size: 16.0)!
        informationLabel.textColor = UIColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        informationLabel.textAlignment = .center
        informationLabel.lineBreakMode = .byWordWrapping
        
        func configurePageControl() {
            self.pageControl.numberOfPages = 4
            self.pageControl.currentPage = 0
            self.pageControl.pageIndicatorTintColor = .lightGray
            self.pageControl.currentPageIndicatorTintColor = .white
            
        }
        
        
        func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
            let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
            pageControl.currentPage = Int(pageNumber)
        }
    }
    
}
