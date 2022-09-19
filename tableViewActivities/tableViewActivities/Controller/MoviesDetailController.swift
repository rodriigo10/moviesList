//
//  MoviesDetailController.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 18/09/22.
//

import UIKit

class MoviesDetailController: NSObject {

    var detail: Content?
    
    var imageMoviesDetail: String {
        return detail?.images?.first?.url ?? ""
    }
    
    var descriptionMovies: String {
        return  "- Sinopse - \n \r" + (detail?.contentDescription ?? "")
    }
    
    var titleMovies: String {
        return detail?.title ?? ""
    }
    func getDetailsMovies(content: Content?) {
        self.detail = content
    }
    
}
