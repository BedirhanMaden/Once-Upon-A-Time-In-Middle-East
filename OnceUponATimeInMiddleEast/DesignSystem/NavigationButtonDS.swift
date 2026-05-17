//
//  NavigationButtonDS.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI

struct NavigationButtonDS: View {
    private let buttonText: String
    private let imageText: String

    init(buttonText: String, imageText: String) {
        self.buttonText = buttonText
        self.imageText=imageText
    }
    var body: some View {

        Image(imageText).resizable().frame(width: 300,height: 150).scaledToFill().overlay {
            Text(buttonText).foregroundColor(.buttonText).bold().font(.title)
        }.clipShape(.rect(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.brown, lineWidth: 10))
            .shadow(radius: 10).padding(Spacing.spacing_3)
    }
}

#Preview {
    NavigationButtonDS(buttonText: "test", imageText: "")
}
