//
//  Tab.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    // associated value
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var image: Image {
        switch self {
        case .home: Image(systemName: "house.fill")
        case .other: Image(systemName: "ellipsis")
        }
    }
}
