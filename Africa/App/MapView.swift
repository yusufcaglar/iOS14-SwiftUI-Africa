//
//  MapView.swift
//  Africa
//
//  Created by Yusuf ÇAĞLAR on 26/03/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: - Body
    
    var body: some View {
        //MARK: - Basic Map
        //Map(coordinateRegion: $region)
        //MARK: - Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // 1.Pin - Old Style(always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // 2.Marker - New Style(always static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // 3. Custom Basic Annotation (it can be interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: Annotation
        })
    }
}

//MARK: - Preview

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
