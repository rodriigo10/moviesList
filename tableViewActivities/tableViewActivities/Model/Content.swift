//
//  Content.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 14/09/22.
//

import Foundation

// MARK: - Content
struct Content: Codable {
    let hatType, percentageWatched: Int?
    let title, hashKey: String?
    let isBlocked, isCvod: Bool?
    let images: [Image]?
    let categories: String?
    let programType: ProgramType?
    let mediaType: MediaType?
    let contentDescription: String?
    let price: Price?
    let year: Int?
    let parentalRating: String?
    let idMotor: IDMotor?
    let eligibility: Eligibility?

    enum CodingKeys: String, CodingKey {
        case hatType, percentageWatched, title, hashKey, isBlocked, isCvod, images, categories, programType, mediaType
        case contentDescription = "description"
        case price, year, parentalRating, idMotor, eligibility
    }
}

enum Eligibility: String, Codable {
    case locker = "locker"
}

enum IDMotor: String, Codable {
    case defaultWithoutRecommendation = "defaultWithoutRecommendation"
}
