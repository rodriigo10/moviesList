//
//  MoviesController.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 14/09/22.
//

import UIKit

class MoviesController: NSObject {

    let request = Request()
    var movies: Movies?
    var detail: Content?

    var numberOfRows: Int {
        return movies?.contents?.count ?? 0
    }

    var heightSize: CGFloat {
        return 200
    }
    
    func getRequest(completion: @escaping (Bool) -> Void ) {
        request.makeRequest { [weak self] movies, sucess in
            if sucess {
                self?.movies = movies
                completion(true)
            } else{
                completion(false)
            }
        }
    }

    func cellsByIndex(indexPath: IndexPath) -> Content? {
        return movies?.contents?[indexPath.row]
    }
}
