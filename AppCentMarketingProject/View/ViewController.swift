//
//  ViewController.swift
//  AppCentMarketingProject
//
//  Created by Sevval Armagan on 1.07.2020.
//  Copyright © 2020 Sevval Armagan. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDelegate {
    
    let scrollView = UIScrollView()
    func setScrollView(){
        view.addSubview(scrollView)
        paddingScrollView()
        scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(0)
            make.leading.equalTo(view).offset(0)
            make.trailing.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
    }
    
    func paddingScrollView(){
          scrollView.translatesAutoresizingMaskIntoConstraints = false
          scrollView.showsHorizontalScrollIndicator = false
      }
    
    let container = UIStackView()
    func setContainer(){
        scrollView.addSubview(container)
        paddingStackView()
        container.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.leading.equalTo(0)
            make.width.equalTo(scrollView)
            make.bottom.equalTo(scrollView.snp.bottom).offset(0)
        }
    }
    
    
    private func paddingStackView(){
          container.backgroundColor = .purple
          container.axis = .vertical
          container.translatesAutoresizingMaskIntoConstraints = false
      }
    /////////////////////////////
    
    private let headerView = Header()
    private func setHeaderView(){
        container.addArrangedSubview(headerView)
        headerView.snp.makeConstraints { (make) in
            make.leading.trailing.top.equalTo(container)
            make.height.equalTo(100)
        }
        headerView.setHeader()
    }
    
    private let sliderView = Slider()
    private func setSliderView(){
        container.addArrangedSubview(sliderView)
        sliderView.backgroundColor = .systemPink
        sliderView.isUserInteractionEnabled = true
        sliderView.snp.makeConstraints { (make) in
            make.leading.trailing.equalTo(container)
            make.height.equalTo(500)
        }
        
        sliderView.setSlider(text: "Murat Can Şahinoğlu ile Perküsyon Atölyesi")
    }
    
    private let timerView = TimerView()
    private func setTimerView(){
        container.addArrangedSubview(timerView)
        timerView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(168)
        }
        timerView.setTimer()
    }
    
    /////////////////////////////
    
    private let collectionViewView = CollectionView()
    private func setCollectionViewView(){
        container.addArrangedSubview(collectionViewView)
        collectionViewView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(371)
        }
        
        collectionViewView.setCollectionView()
        collectionViewView.collectionView.delegate = self
        collectionViewView.collectionView.dataSource = self
    }
    
    ///////////////////////////
    
    
    private let speakerView = Spaeker()
    private func setSpeakerView(){
        container.addArrangedSubview(speakerView)
        speakerView.snp.makeConstraints { (make) in
            make.leading.equalTo(container).offset(25)
            make.height.equalTo(260)
        }
        speakerView.setSpeaker()
    }
    
    
    ///////////////////////////////
    private let lastYellowView = UIView()
    private func setLastYellowView(){
        container.addSubview(lastYellowView)
        lastYellowView.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(collectionViewView.snp.bottom).offset(217)
            make.height.equalTo(500)
        }
        lastYellowView.backgroundColor = UIColor(red: 255/255, green: 207/255, blue: 32/255, alpha: 1)
    }

    
    var hakkımızdaFooter = Footer()
    func setHakkımızdaFooter(){
        container.addArrangedSubview(hakkımızdaFooter)
        hakkımızdaFooter.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(77)
        }
        hakkımızdaFooter.setFooterView(text: "Hakkımızda")
    }
    
    var sponsorlarFooter = Footer()
    func setSponsorlarFooter(){
        container.addArrangedSubview(sponsorlarFooter)
        sponsorlarFooter.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(77)
        }
        sponsorlarFooter.setFooterView(text: "Sponsorlar")
    }
    
    var XCOFooter = Footer()
    func setXCOFooter(){
        container.addArrangedSubview(XCOFooter)
        XCOFooter.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(77)
        }
        XCOFooter.setFooterView(text: "Geçmişte XCO")
    }
    
    var lokasyonFooter = Footer()
    func setLokasyonFooter(){
        container.addArrangedSubview(lokasyonFooter)
        lokasyonFooter.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(77)
        }
        lokasyonFooter.setFooterView(text: "Lokasyon")
    }
    
    var iletisimFooter = Footer()
    func setIletisimFooter(){
        container.addArrangedSubview(iletisimFooter)
        iletisimFooter.snp.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(77)
        }
        iletisimFooter.setFooterView(text: "İletişim")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setScrollView()
        setContainer()
        setHeaderView()
        //
        setSliderView()
        //
        setTimerView()
        //
        setCollectionViewView()
        //
        setLastYellowView()
        setSpeakerView()
        //
        setHakkımızdaFooter()
        setSponsorlarFooter()
        setXCOFooter()
        setLokasyonFooter()
        setIletisimFooter()
    }
}



extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cCell.backgroundColor = .white
        
        cCell.Label.text = "Etkinlik Adı"
        return cCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    //TODO: Cell'lerin kenarlara olan uzaklıkları
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
    }
    
}
