//
//  HomeView.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView()
            MenuSuggestSectionView()
            Spacer(minLength: 32.0)
            EventSectionView()
        }
    }
}

#Preview {
    HomeView()
}
