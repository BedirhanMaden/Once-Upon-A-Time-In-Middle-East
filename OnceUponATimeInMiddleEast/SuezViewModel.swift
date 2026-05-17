//
//  SuezViewModel.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import Foundation
import Firebase
import FirebaseFirestore
class SuezViewModel: ObservableObject{

    @Published var artifactList = [Artifact]()
    @Published var isSheetPresented = false
    @Published var artifact:Artifact?=nil


    func presentSheet(artifact: Artifact){

        isSheetPresented=true
        self.artifact=artifact
    }
    func dismissSheet(){
        isSheetPresented=false
    }

    func fetchArtifacts(){
        let db=Firestore.firestore()

        db.collection("SuezArtifacts").getDocuments { snapshot, error in
            if error == nil{

                if let snapshot = snapshot{

                    /*DispatchQueue.main.async {
                        self.artifactList = snapshot.documents.map{d in

                            return Artifact(age: d["age"] as? Int ?? 0, description: d["description"] as? String ?? "", id: d["id"] as? Int ?? 0, image: d["image"] as? String ?? "", name: d["name"] as? String ?? "", reference: d["reference"] as? String ?? "")

                        }
                    }
                    */

                    for document in  snapshot.documents{
                        let d = document.data()
                        var artifact=Artifact(age: d["age"] as? Int ?? 0, description: d["description"] as? String ?? "", id: d["id"] as? Int ?? 0, image: d["image"] as? String ?? "", name: d["name"] as? String ?? "", reference: d["reference"] as? String ?? "")
                        self.artifactList.append(artifact)



                    }
                    print(self.artifactList)


                }

            }
        }
    }

}
