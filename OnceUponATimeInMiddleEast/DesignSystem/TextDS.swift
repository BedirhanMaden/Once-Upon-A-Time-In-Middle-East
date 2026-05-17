//
//  Text.swift
//  Midterm
//
//  Created by Bedirhan Maden on 3.12.2023.
//

import SwiftUI

struct TextDS: View {

    private let text: String

    init(text: String) {
        self.text = text
    }
    var body: some View {
        Text(text).font(.callout).padding(Spacing.spacing_2).shadow(radius: Radius.radius_3).foregroundColor(.black)
    }
}


#Preview {
    TextDS(text: "String")
}
