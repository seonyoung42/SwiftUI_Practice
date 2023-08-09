//
//  SettingView.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoView()
            }
            Button("회원 정보 수정") { }
                .accentColor(.black)
                .font(.body)
            Button("회원 탈퇴") { }
                .accentColor(.black)
                .font(.body)
        }
        .navigationTitle("설정")
        .listStyle(GroupedListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text("\(User.shared.username)")
                    .font(.title)
                Text("\(User.shared.account)")
                    .font(.caption)
            }
            Spacer()
            Button(action:{ }) {
                Text("로그아웃")
                    .font(.system(size: 14.0,
                                  weight: .bold,
                                  design: .default))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

#Preview {
    SettingView()
}
