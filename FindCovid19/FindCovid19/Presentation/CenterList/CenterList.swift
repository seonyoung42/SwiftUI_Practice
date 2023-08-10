//
//  CenterList.swift
//  FindCovid19
//
//  Created by 장선영 on 2023/08/10.
//

import SwiftUI

struct CenterList: View {
    var centers = [Center]()
    
    var body: some View {
        List(centers, id: \.id) { center in
            CenterRow(center: center)
        }
//        .navigationTitle(centers.sido.rawValue)
    }
}

#Preview {
    var centerList = [
        Center(id: 0, sido: .강원도, facilityName: "우리집", address: "강원도 어쩌고 저쩌고", lat: "37.4", lng: "37.6", centerType: .central, phoneNumber: "010-9999-8888"),
        Center(id: 0, sido: .강원도, facilityName: "우리집", address: "강원도 어쩌고 저쩌고", lat: "37.4", lng: "37.6", centerType: .central, phoneNumber: "010-9999-8888"),
        Center(id: 0, sido: .강원도, facilityName: "우리집", address: "강원도 어쩌고 저쩌고", lat: "37.4", lng: "37.6", centerType: .central, phoneNumber: "010-9999-8888")]
        
    return CenterList(centers: centerList)
}
