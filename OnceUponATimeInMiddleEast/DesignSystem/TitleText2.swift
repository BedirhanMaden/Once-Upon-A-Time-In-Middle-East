//
//  TitleText2.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI

struct TitleText2: View {
    private let text: String

    init(text: String) {
        self.text = text
    }
    var body: some View {
        Text( text).font(.title).bold().padding(Spacing.spacing_1).shadow(radius: Radius.radius_3).foregroundColor(.brown.opacity(0.7))
    }
}
#Preview {
    TitleText2(text: "String")
}
