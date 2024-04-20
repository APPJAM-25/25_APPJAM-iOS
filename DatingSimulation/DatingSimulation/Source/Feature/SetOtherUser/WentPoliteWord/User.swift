//
//  User.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/21/24.
//

import Foundation

struct ChatStart: Codable {
    var user: User
    var persona: Persona
}
struct User: Codable, Hashable {
    let name: String
    let age: Int
    let gender: String
}

struct Persona: Codable {
    let ageMin: Int
    let ageMax: Int
    let gender: String
    let mbti: String
    let relationship: String
    let romanticStatus: String
    let polite: Bool
}

struct Persona1: Codable {
    let name: String
    let age: String
    let gender: String
    let mbti: String
    let relationship: String
    let romanticStatus: String
}
