//
//  HomeHeaderView.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("\(User.shared.username)님 \n반갑습니다!😘")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.circlepath")
                })
            }
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0,
                                      weight: .semibold,
                                      design: .default))
                })
                Button(action: {}, label: {
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0,
                                      weight: .semibold,
                                      design: .default))
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                })
            }
        }
        .padding(16.0)
    }
}

#Preview {
    HomeHeaderView()
}
