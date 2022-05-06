//
//  CircleImage.swift
//  MyTestApp
//
//  Created by Артем Денисов on 02.05.2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image.clipShape(Circle()).overlay(Circle().stroke(.gray, lineWidth: 4)).shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
