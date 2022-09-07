//
//  MyInfoView.swift
//  MVVM Pattern
//
//  Created by mac on 2022/09/07.
//

import Foundation
import UIKit

// MARK : - ui와 layout관련 코드
class MyInfoView: UIView {
    
    // 뷰를 스토리보드로 만들지 않고 코드로 작성시 사용
//    var imageName: String = "" {
//        willSet {
//            imageView.image = UIImage(named: newValue)
//        }
//    }
//
//    let imageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textAlignment = .left
        nameLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic",size: 20)!
        nameLabel.textColor = .white
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "nameLabel"
        return nameLabel
    }()
    
    let ageLabel: UILabel = {
        let ageLabel = UILabel()
        ageLabel.textAlignment = .left
        ageLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic",size: 20)!
        ageLabel.textColor = .white
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.text = "ageLabel"
        return ageLabel
    }()
    
    let adoptionFeeLabel: UILabel = {
        let adoptionFeeLabel = UILabel()
        adoptionFeeLabel.textAlignment = .left
        adoptionFeeLabel.font = UIFont(name: "AvenirNextCondensed-MediumItalic",size: 20)!
        adoptionFeeLabel.textColor = .white
        adoptionFeeLabel.translatesAutoresizingMaskIntoConstraints = false
        adoptionFeeLabel.text = "adoptionFeeLabel"
        return adoptionFeeLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 28/255, green: 28/255, blue: 30/255, alpha: 1)
        
        addSubview(nameLabel)
        addSubview(ageLabel)
        addSubview(adoptionFeeLabel)
        
        
        // layout
//        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50).isActive = true
//        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        imageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.804).isActive = true
//        imageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.804).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        
        ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0).isActive = true
        
        adoptionFeeLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 20).isActive = true
        adoptionFeeLabel.leadingAnchor.constraint(equalTo: ageLabel.leadingAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init?(coder:) is not supported")
    }
}
