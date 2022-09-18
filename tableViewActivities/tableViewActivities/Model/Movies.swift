// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let movies = try? newJSONDecoder().decode(Movies.self, from: jsonData)

import Foundation

// MARK: - Movies
struct Movies: Codable {
    let type, carouselID, idMotor: String?
    let store: Bool?
    let contents: [Content]?
    let title: String?

    enum CodingKeys: String, CodingKey {
        case type
        case carouselID = "carouselId"
        case idMotor, store, contents, title
    }
}
