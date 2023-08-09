//
//  HomeViewModel.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }
            
            coffeeMenu.shuffle()
            event.shuffle()
            
            isNeedToReload = false
        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스카페라떼"),
                                               CoffeeMenu(image: Image("coffee"), name: "자몽허니블랙티"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스카페라떼"),
                                               CoffeeMenu(image: Image("coffee"), name: "자몽허니블랙티"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스카페라떼"),
                                               CoffeeMenu(image: Image("coffee"), name: "자몽허니블랙티"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노"),
                                               CoffeeMenu(image: Image("coffee"), name: "아이스아메리카노")]
    
    @Published var event: [Event] = [Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다! 꼭 드셔보세요"),
                                     Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름 한정 음료가 출시되었습니다! 꼭 드셔보세요"),
                                     Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다! 꼭 드셔보세요")]
}
