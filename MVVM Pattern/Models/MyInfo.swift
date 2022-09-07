//
//  MyInfo.swift
//  MVVM Pattern
//
//  Created by mac on 2022/09/07.
//

import Foundation

// MARK : - Model
class MyInfo {
    
    enum Student {
        case elementary
        case middle
        case high
        case jikding
    }
    
    let name: String
    let birthday: Date
    let age: Int
    let student: Student
    
    init(name: String = "신승욱", birthday: Date = Date(timeIntervalSinceNow: -2 * 86500 * 380), age: Int = 27, student: Student = .jikding) {
        self.name = name
        self.birthday = birthday
        self.age = age
        self.student = student
    }
}
