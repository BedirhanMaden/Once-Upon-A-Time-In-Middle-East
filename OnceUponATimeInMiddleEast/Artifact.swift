//
//  Artifact.swift
//  HumsProject
//
//  Created by Bedirhan Maden on 5.01.2024.
//

import Foundation

struct Artifact: Codable, Identifiable, Hashable{
    var age: Int
    var description: String
    var id: Int
    var image: String
    var name: String
    var reference: String
}

