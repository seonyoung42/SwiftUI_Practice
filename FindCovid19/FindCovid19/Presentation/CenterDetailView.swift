//
//  CenterDetailView.swift
//  FindCovid19
//
//  Created by 장선영 on 2023/08/10.
//

import SwiftUI
import MapKit

struct CenterDetailView: View {
    var center: Center
    
    var body: some View {
        VStack {
            MapView(coordination: center.coordinate)
                .ignoresSafeArea(edges: .all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            CenterRow(center: center)
        }
        .navigationTitle(center.facilityName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    CenterDetailView()
//}
