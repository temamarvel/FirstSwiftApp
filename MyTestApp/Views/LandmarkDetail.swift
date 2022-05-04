//
//  LandmarkDetail.swift
//  MyTestApp
//
//  Created by Артем Денисов on 04.05.2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    let imagePadding: CGFloat = -130
    let mapHeight: CGFloat = 300
    
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate).ignoresSafeArea(edges: .top).frame(height: mapHeight)
            
            CircleImage(image: landmark.image).offset(y: imagePadding).padding(.bottom, imagePadding)
            
            VStack(alignment: .leading) {
                Text(landmark.name).font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline).foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }.padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
