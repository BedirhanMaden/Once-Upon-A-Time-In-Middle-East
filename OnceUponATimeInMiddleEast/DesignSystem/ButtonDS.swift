//
//  ButtonDS.swift
//  Midterm
//
//  Created by Bedirhan Maden on 3.12.2023.
//

import SwiftUI

struct ButtonDS: View {
   
    private let buttonText:String
    private let action: () -> Void

    init(buttonText: String, action: @escaping () -> Void) {
        self.buttonText = buttonText
        self.action = action
    }

    var body: some View {

        Button(action: action){

           // Text(buttonText).foregroundColor(.buttonText).padding(.vertical,Spacing.spacing_3).padding(.horizontal,Spacing.spacing_5).overlay{
              //  RoundedRectangle(cornerRadius: Radius.spacing_2).stroke(.buttonBorder,lineWidth: 2.0)

            Image("ButtonImage").resizable().frame(width: 100,height: 50).scaledToFit().overlay {
                Text(buttonText).foregroundColor(.buttonText).shadow(radius: Radius.radius_3)
            }


            }

        }

}

#Preview {
    ButtonDS(buttonText: "test", action: {})
}
