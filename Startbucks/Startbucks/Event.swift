//
//  Event.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
}
