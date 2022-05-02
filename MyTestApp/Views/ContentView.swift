//
//  ContentView.swift
//  MyTestApp
//
//  Created by Артем Денисов on 28.04.2022.
//

import SwiftUI

struct ContentView: View {
    let imagePadding: CGFloat = -130
    let mapHeight: CGFloat = 300
    
    var body: some View {
        VStack{
            MapView().ignoresSafeArea(edges: .top).frame(height: mapHeight)
            
            CircleImage().offset(y: imagePadding).padding(.bottom, imagePadding)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title)
                HStack {
                    Text("Jhoshua Tree National Park")
                    Spacer()
                    Text("California")
                }.font(.subheadline).foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
