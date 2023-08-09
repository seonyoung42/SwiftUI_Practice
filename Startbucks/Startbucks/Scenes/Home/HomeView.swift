//
//  HomeView.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestSectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 32.0)
            EventSectionView(event: $viewModel.event)
        }
    }
}

#Preview {
    HomeView()
}
