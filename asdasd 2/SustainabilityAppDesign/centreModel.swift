//
//  centreModel.swift
//  SustainabilityAppDesign
//
//  Created by Podaru, Maria-Gabriela on 20/04/2023.
//

import Foundation

struct recyclingCentres: Decodable {
    var name: String
    var address: String
    var latitude: Double
    var longitude: Double
}

struct rCentres: Decodable {
    var centres: [recyclingCentres]
}
