//
//  AbudanView.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import SwiftUI


struct AbudanView: View {
    @ObservedObject var viewModel=AbudanViewModel()

    var body: some View {
        ScrollView{
            VStack{
                VStack{

                    TitleText(text: "The Nationalization of the Abadan Refinery ")
                    TitleText2(text: "'A Bigger Perspective'")
                    TextDS(text: "  The nationalization of Abadan Refinery in 1951 led to huge incidents, which resulted in the current state of Iran. In this exhibition, the aftermath of this nationalization is being demonstrated using various photographs and objects").italic()
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
    AbudanView()
}
