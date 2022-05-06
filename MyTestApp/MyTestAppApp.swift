//
//  MyTestAppApp.swift
//  MyTestApp
//
//  Created by Артем Денисов on 28.04.2022.
//

import SwiftUI

@main
struct MyTestAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
