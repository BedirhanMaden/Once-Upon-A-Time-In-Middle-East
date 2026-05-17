//
//  ContentView.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                TitleText(text: "Once Upon A Time In Middle East")
                TextDS(text: "This is a virtual exhibiton  that aims to provide a bigger perspective the aftermath of two major incidents: Nationalization of Suez Canal and Abadan Refinery.").italic()
                Spacer()
                VStack{
                    NavigationLink(destination: SuezView()){
                        NavigationButtonDS(buttonText: "The Suez Canal Section", imageText: "Suez")
                    }
                    
                    NavigationLink(destination: AbudanView()){
                        NavigationButtonDS(buttonText: "The Abadan Section", imageText: "Abadan")
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
