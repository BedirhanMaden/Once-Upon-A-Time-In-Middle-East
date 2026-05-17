//
//  HumsProjectApp.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI
import Firebase
@main
struct HumsProjectApp: App {

    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
