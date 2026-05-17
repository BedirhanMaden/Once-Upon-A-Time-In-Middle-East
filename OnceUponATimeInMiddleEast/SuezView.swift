//
//  SuezView.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI

struct SuezView: View {
    @ObservedObject var viewModel=SuezViewModel()

    var body: some View {
        ScrollView{
            VStack{
                VStack{
                   
                    TitleText(text: "The Nationalization of the Suez Canal")
                    TitleText2(text: "'A Bigger Perspective'")
                    TextDS(text: "  The Suez Canal has a quite unique history, and one of the most significant incident throughout its' history is its' nationalization by the famous president Gamal Abdel Nasser on 26 July 1956. This exhibit features various different objects, and it focuses on the causes and effects of this incident.").italic()
                }
                
                ForEach(viewModel.artifactList, id:\.self) { artifact in

                    Button {
                        viewModel.presentSheet(artifact: artifact)
                    } label: {
                        ArtifactRowView(artifact: artifact)
                    }.sheet(isPresented: $viewModel.isSheetPresented,onDismiss: viewModel.dismissSheet, content: {
                        ArtifactDetailView(artifact: viewModel.artifact ?? artifact)

                        })


                }
            }
        }
    }

    init(){
        viewModel.fetchArtifacts()
    }
}

#Preview {
    SuezView()
}
