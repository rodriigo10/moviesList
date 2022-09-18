//
//  Image.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 14/09/22.
//

import Foundation

// MARK: - Image
struct Image: Codable {
    let type, width, height: Int?
    let url: String?
}

enum MediaType: String, Codable {
    case movie = "MOVIE"
    case serie = "SERIE"
}

enum Price: String, Codable {
    case gratis = "Gratis"
}

enum ProgramType: String, Codable {
    case program = "Program"
    case serie = "Serie"
}
