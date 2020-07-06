//
//  Timer.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 3.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class TimerView : UIView {
    
    var timerView = UIView()
    var timeViewBackgroundImage = UIImageView()
    var titleLabel = UILabel()
    var detailsLabel = UILabel()
    var rightTimerline = Line()
    var leftTimerLine = Line()
    
    
    var dayImage = UILabel()
    var dayLabel = UILabel()
    var hoursImage = UILabel()
    var hoursLAbel = UILabel()
    var minutesImage = UILabel()
    var minutesLabel = UILabel()
    
    
    func setTimer(){
        
        startTimer()
        self.addSubview(timerView)
        timerView.addSubview(timeViewBackgroundImage)
        timeViewBackgroundImage.addSubview(titleLabel)
        timeViewBackgroundImage.addSubview(detailsLabel)
        timeViewBackgroundImage.addSubview(rightTimerline)
        timeViewBackgroundImage.addSubview(leftTimerLine)
        timeViewBackgroundImage.addSubview(dayImage)
        timeViewBackgroundImage.addSubview(dayLabel)
        timeViewBackgroundImage.addSubview(hoursImage)
        timeViewBackgroundImage.addSubview(hoursLAbel)
        timeViewBackgroundImage.addSubview(minutesImage)
        timeViewBackgroundImage.addSubview(minutesLabel)
        
        
        timerView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            //  make.top.equalTo(sliderView.snp.bottom).offset(0)
            make.height.equalTo(168)
            
            timeViewBackgroundImage.snp.makeConstraints { (make) in
                make.leading.trailing.equalTo(timerView).offset(0)
                make.top.equalTo(timerView).offset(22)
                make.bottom.equalTo(timerView).offset(-47)
            }
            timeViewBackgroundImage.image = UIImage(named: "background")
            
            titleLabel.snp.makeConstraints { (make) -> Void  in
                make.top.equalTo(timeViewBackgroundImage)
                make.leading.equalTo(timeViewBackgroundImage).offset(46)
                make.trailing.equalTo(timeViewBackgroundImage).offset(-46)
                make.height.equalTo(26)
            }
            titleLabel.text =  "XCO 19"
            titleLabel.font =  UIFont(name: "Avenir-Black", size: 24.0)!
            titleLabel.textColor = UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
            titleLabel.textAlignment = .center
            titleLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            
            detailsLabel.snp.makeConstraints { (make) -> Void  in
                make.top.equalTo(titleLabel.snp.bottom).offset(0)
                make.leading.equalTo(timeViewBackgroundImage).offset(46)
                make.trailing.equalTo(timeViewBackgroundImage).offset(-46)
                make.height.equalTo(26)
            }
            detailsLabel.text =  "Deneyim Tasarımı ve Yönetim Zirvesi’ne son:"
            detailsLabel.font =  UIFont(name: "Avenir-Medium", size: 14.0)!
            detailsLabel.textColor = UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
            detailsLabel.textAlignment = .center
            detailsLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            
            rightTimerline.snp.makeConstraints { (make) in
                make.leading.equalTo(timeViewBackgroundImage).offset(0)
                make.bottom.equalTo(timeViewBackgroundImage.snp.bottom).offset(0)
            }
            rightTimerline.setLine(width: 64)
            leftTimerLine.snp.makeConstraints { (make) in
                make.trailing.equalTo(timeViewBackgroundImage).offset(0)
                make.bottom.equalTo(timeViewBackgroundImage.snp.bottom).offset(0)
            }
            leftTimerLine.setLine(width: 64)
            
            
            dayLabel.snp.makeConstraints { (make) in
                make.leading.equalTo(timeViewBackgroundImage.snp.leading).offset(96)
                make.top.equalTo(timeViewBackgroundImage.snp.top).offset(65)
                make.height.equalTo(46)
                make.width.equalTo(41)
            }
            dayLabel.text = String(diffDateComponents.day ?? 0)
            
            dayImage.snp.makeConstraints { (make) in
                make.leading.equalTo(dayLabel.snp.leading)
                // make.trailing.equalTo(dayLabel.snp.trailing)
                make.top.equalTo(dayLabel.snp.bottom)
                make.height.equalTo(22)
                make.width.equalTo(29)
            }
            dayImage.text = "gün"
            dayImage.font =  UIFont(name: "Avenir-Black", size: 16.0)!
            dayImage.textColor = UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
            
            hoursLAbel.snp.makeConstraints { (make) in
                make.leading.equalTo(dayLabel.snp.trailing).offset(30)
                make.top.equalTo(timeViewBackgroundImage.snp.top).offset(65)
                make.height.equalTo(46)
                make.width.equalTo(41)
            }
            hoursLAbel.text = String(diffDateComponents.day ?? 0)
            
            hoursImage.snp.makeConstraints { (make) in
                make.leading.equalTo(hoursLAbel.snp.leading)
                // make.trailing.equalTo(hoursLAbel.snp.trailing)
                make.centerX.equalToSuperview()
                make.top.equalTo(dayLabel.snp.bottom)
                make.height.equalTo(22)
                make.width.equalTo(32)
            }
            hoursImage.text = "saat"
            hoursImage.font =  UIFont(name: "Avenir-Black", size: 16.0)!
            hoursImage.textColor = UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
            
            
            minutesLabel.snp.makeConstraints { (make) in
                make.trailing.equalTo(timeViewBackgroundImage.snp.trailing).offset(-96)
                make.top.equalTo(timeViewBackgroundImage.snp.top).offset(65)
                make.height.equalTo(46)
                make.width.equalTo(41)
            }
            minutesLabel.text = String(diffDateComponents.day ?? 0)
            
            minutesImage.snp.makeConstraints { (make) in
                make.leading.equalTo(minutesLabel.snp.leading)
                // make.trailing.equalTo(hoursLAbel.snp.trailing)
                make.top.equalTo(dayLabel.snp.bottom)
                make.height.equalTo(22)
                make.width.equalTo(50)
            }
            minutesImage.text = "dakika"
            minutesImage.font =  UIFont(name: "Avenir-Black", size: 16.0)!
            minutesImage.textColor = UIColor(red: 29.0 / 255.0, green: 29.0 / 255.0, blue: 27.0 / 255.0, alpha: 1.0)
        }
        
    }
    
    
     var releaseDate: NSDate?
        var countdownTimer = Timer()
        var diffDateComponents = DateComponents()
        func startTimer() {
            
            let releaseDateString = "2020-09-16 08:00:00"
            let releaseDateFormatter = DateFormatter()
            releaseDateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            releaseDate = releaseDateFormatter.date(from: releaseDateString)! as NSDate
            
            countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
        
        @objc func updateTime() {
            
            let currentDate = Date()
            let calendar = Calendar.current
            
            diffDateComponents = calendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: releaseDate! as Date)
            
            let countdown = "Days \(diffDateComponents.day ?? 0), Hours \(diffDateComponents.hour ?? 0), Minutes \(diffDateComponents.minute ?? 0), Seconds \(diffDateComponents.second ?? 0)"
            
            dayLabel.text = String(diffDateComponents.day ?? 0)
            hoursLAbel.text = String(diffDateComponents.hour ?? 0)
            minutesLabel.text = String(diffDateComponents.minute ?? 0)
        }
        
       
    }



