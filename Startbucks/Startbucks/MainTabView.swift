//
//  ContentView.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.image
                    Tab.home.textItem
                }
            OtherView()
                .tabItem {
                    Tab.other.image
                    Tab.other.textItem
                }
        }
    }
}

struct HomeView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct OtherView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

#Preview {
    MainTabView()
}
