//
//  LandmarkList.swift
//  MyTestApp
//
//  Created by Артем Денисов on 02.05.2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in LandmarkRow(landmark: landmark) }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
