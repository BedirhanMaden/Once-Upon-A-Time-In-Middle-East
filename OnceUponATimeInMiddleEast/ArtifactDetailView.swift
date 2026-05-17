//
//  ArtifactDetailView.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI

struct ArtifactDetailView: View {
    @State var artifact: Artifact
    var body: some View {
        ScrollView{
            VStack{

                TitleText(text: artifact.name)

                AsyncImage(url: URL(string: artifact.image ?? " " )){ image in

                    image.resizable() .scaledToFill().clipShape(.rect(cornerRadius: 10))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.brown, lineWidth: 10))
                        .shadow(radius: 10).padding(Spacing.spacing_5)

                } placeholder: {
                    LoadingView()

                }
                HStack{
                    Text(artifact.reference).font(.caption)
                    Text(String(artifact.age)).font(.caption)

                }
                VStack{
                    TextDS(text: artifact.description).italic()
                    
                }


            }
        }
    }
}

#Preview {
    ArtifactDetailView(artifact: Artifact(age: 0, description: "", id: 0, image: "https://i0.wp.com/porteconomicsmanagement.org/wp-content/uploads/suezconstruc.jpg?w=900&ssl=1", name: "", reference: ""))
}
