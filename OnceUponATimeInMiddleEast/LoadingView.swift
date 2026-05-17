//
//  LoadingView.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//


import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(){
            ProgressView()
            Text("Loading")
        }

    }
}

#Preview {
    LoadingView()
}
