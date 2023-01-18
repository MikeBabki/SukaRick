//
//  CharactersModel.swift
//  SukaRick
//
//  Created by Макар Тюрморезов on 18.01.2023.
//

import Foundation

struct CharactersModel: Decodable {
    
    var result: [Result]
}

struct Result: Decodable {
    
    var id: Float?
    var name: String?
    var status: String?
    var species: String?
    var type: String?
    var gender: String?
    var origin: [Origin]
}
struct Origin: Decodable {
    var name: String?
    var url: String?
}

//"id": 361,
//"name": "Toxic Rick",
//"status": "Dead",
//"species": "Humanoid",
//"type": "Rick's toxic side",
//"gender": "Male",
//"origin": {
//    "name": "Detoxifier",
//    "url": "https://rickandmortyapi.com/api/location/64"
