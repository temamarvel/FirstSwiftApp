//
//  LandmarkDetail.swift
//  MyTestApp
//
//  Created by Артем Денисов on 04.05.2022.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    let imagePadding: CGFloat = -130
    let mapHeight: CGFloat = 300
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate).ignoresSafeArea(edges: .top).frame(height: mapHeight)
            
            CircleImage(image: landmark.image).offset(y: imagePadding).padding(.bottom, imagePadding)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name).font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
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
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
