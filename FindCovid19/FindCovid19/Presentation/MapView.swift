//
//  MapView.swift
//  FindCovid19
//
//  Created by 장선영 on 2023/08/10.
//

import SwiftUI
import MapKit

struct AnnotationItem: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    var coordination: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    @State private var annotationItems = [AnnotationItem]()
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: [AnnotationItem(coordinate: coordination)]) { item in
            MapMarker(coordinate: item.coordinate)
        }
            .onAppear {
                setRegion(coordination)
                setAnnotationItems(coordination)
            }
    }
    
    private func setRegion(_ coordiate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordiate,
                                    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    }
    
    private func setAnnotationItems(_ coordiate: CLLocationCoordinate2D) {
        annotationItems = [AnnotationItem(coordinate: coordiate)]
    }
 
}
//
//#Preview {
//    MapView()
//}
