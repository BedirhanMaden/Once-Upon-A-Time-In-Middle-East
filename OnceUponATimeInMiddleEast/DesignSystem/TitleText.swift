//
//  TitleText.swift
//  Midterm
//
//  Created by Bedirhan Maden on 3.12.2023.
//

import SwiftUI

struct TitleText: View {
    private let text: String

    init(text: String) {
        self.text = text
    }
    var body: some View {
        Text( text).font(.largeTitle).bold().padding(Spacing.spacing_1).shadow(radius: Radius.radius_3).foregroundColor(.brown)
    }
}
#Preview {
    TitleText(text: "String")
}
