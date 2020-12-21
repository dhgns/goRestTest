//
//  Model.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import Foundation

// MARK: - UsersResponse
struct UsersResponse: Codable {
    let code: Int
    let meta: Meta
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let name, email: String
    let gender: Gender
    let status: Status
    let createdAt, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id, name, email, gender, status
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
}

enum Status: String, Codable {
    case active = "Active"
    case inactive = "Inactive"
}

// MARK: - Meta
struct Meta: Codable {
    let pagination: Pagination
}

// MARK: - Pagination
struct Pagination: Codable {
    let total, pages, page, limit: Int
}
