//
//  User.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "선영", account: "seonyeong42")
}
