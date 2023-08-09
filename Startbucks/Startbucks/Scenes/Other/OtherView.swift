//
//  OtherView.swift
//  Startbucks
//
//  Created by 장선영 on 2023/08/09.
//

import SwiftUI

struct OtherView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            NavigationLink(raw, destination: Text(raw))
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(
                        destination: Text("destination"),
                        label: { Image(systemName: "gear")}
                    )
                }
        }
    }
}

#Preview {
    OtherView()
}

