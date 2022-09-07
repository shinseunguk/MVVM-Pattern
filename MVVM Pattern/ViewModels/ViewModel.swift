//
//  ViewModel.swift
//  MVVM Pattern
//
//  Created by mac on 2022/09/07.
//

import Foundation

class ViewModel {
    let myInfo : MyInfo
    let calender : Calendar
    
    init() {
        self.myInfo = MyInfo()
        self.calender = Calendar(identifier: .gregorian)
    }
    
    var strName: String {
        return myInfo.name
    }
    
    var strBirthDay: String {
        let today = calender.startOfDay(for: Date())
        let birthday = calender.startOfDay(for: myInfo.birthday)
        let components = calender.dateComponents([.year], from: birthday, to: today)
        let age = components.year == nil ? 0 : components.year!
        return "\(age)살 입니다."
    }
    
    var strAge: Int {
        return myInfo.age
    }
    
    var strStudent: String {
        switch myInfo.student {
        case .elementary:
            return "초등학생"
        case .middle:
            return "중학생"
        case .high:
            return "고등학교"
        case .jikding:
            return "직딩"
        default:
            return "default"
        }
    }
}

extension ViewModel {
    func configure(_ view: MyInfoView) {
        view.nameLabel.text = strName
//        view.imageName = imageName
        view.ageLabel.text = "\(strAge)"
        view.adoptionFeeLabel.text = strStudent
    }
}

