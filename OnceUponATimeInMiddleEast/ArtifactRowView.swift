//
//  ArtifactRowView.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI

struct ArtifactRowView: View {
    @State var artifact: Artifact
    var body: some View {
        VStack{

            TitleText2(text: artifact.name)

            AsyncImage(url: URL(string: artifact.image ?? " " )){ image in

                image.resizable() .scaledToFill().clipShape(.rect(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.brown, lineWidth: 10))
                    .shadow(radius: 10)

            } placeholder: {
                LoadingView()

            }
            HStack{
                Text(artifact.reference).font(.caption).foregroundColor(.black).padding(Spacing.spacing_1).italic()
                Text(String(artifact.age)).font(.caption).foregroundColor(.black).padding(Spacing.spacing_1).italic()



            }

        }.padding(.horizontal,Spacing.spacing_3).padding(.vertical,Spacing.spacing_2)
    }
}

#Preview {
    ArtifactRowView(artifact: Artifact(age: 0, description: "", id: 0, image: "https://i0.wp.com/porteconomicsmanagement.org/wp-content/uploads/suezconstruc.jpg?w=900&ssl=1", name: "", reference: ""))
}
