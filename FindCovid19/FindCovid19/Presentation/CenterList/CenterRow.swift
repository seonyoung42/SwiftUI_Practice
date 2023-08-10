//
//  CenterRow.swift
//  FindCovid19
//
//  Created by 장선영 on 2023/08/10.
//

import SwiftUI

struct CenterRow: View {
    var center: Center
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(center.facilityName)
                    .font(.headline)
                Text(center.centerType.rawValue)
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }
            Text(center.address)
                .font(.footnote)
            
            if let url = URL(string: "tel:" + center.phoneNumber) {
                Link(center.phoneNumber, destination: url)
            }
        }
        .padding()
    }
}

//#Preview {
//    let center0 = Center(id: 0, sido: .강원도, facilityName: "우리집", address: "강원도 어쩌고 저쩌고", lat: "37.4", lng: "37.6", centerType: .central, phoneNumber: "010-9999-8888")
//    
//    CenterRow(center: center0)
//}
