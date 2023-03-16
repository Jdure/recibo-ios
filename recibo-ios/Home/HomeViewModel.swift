//
//  HomeViewModel.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-03-15.
//

import Foundation
// MARK: - Users
struct Users: Codable {
    let users: [User]
}

// MARK: - User
struct User: Codable, Hashable {
    let id: Int
    let firstName, lastName: String
    let email, phone: String
    let image: String
    
#if DEBUG
static let example = User(id: 5000, firstName: "Bob", lastName: "Smith", email: "bobsmith@example.com", phone: "555-444-321-1214", image: "https://robohash.org/hicveldicta.png")
#endif
}

