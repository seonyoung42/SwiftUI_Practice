//
//  StartbucksApp.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

@main
struct StartbucksApp: App { // APP = AppDelegate + SceneDelegate
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .accentColor(.green)
        }
    }
}
