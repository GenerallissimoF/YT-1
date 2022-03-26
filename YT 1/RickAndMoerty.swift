//
//  Mooovi.swift
//  YT 1
//
//  Created by Ivan Adoniev on 25.03.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rickAndMoerty = try? newJSONDecoder().decode(RickAndMoerty.self, from: jsonData)

import Foundation

// MARK: - RickAndMoerty
struct RickAndMoerty: Decodable {
    let info: Info
    let results: [Result]
}

// MARK: - Info
struct Info: Decodable {
    let count, pages: Int
    let next: String
   
}

// MARK: - Result
struct Result: Decodable {
    let id: Int
    let name: String
    let status: Status
    let species: Species
    let type: String
    let gender: Gender
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum Gender: Decodable {
    case female
    case male
    case unknown
}

// MARK: - Location
struct Location: Decodable {
    let name: String
    let url: String
}

enum Species: Decodable {
    case alien
    case human
}

enum Status: Decodable {
    case alive
    case dead
    case unknown
}
