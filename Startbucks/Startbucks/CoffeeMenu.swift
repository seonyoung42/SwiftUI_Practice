//
//  CoffeeMenu.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
    
    static let sample: [CoffeeMenu] = [CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스카페라떼"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스카페라떼"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스카페라떼"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                       CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노")]
}
