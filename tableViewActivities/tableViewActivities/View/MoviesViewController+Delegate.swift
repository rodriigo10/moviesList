//
//  MoviesViewController+Delegate.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 13/09/22.
//

import UIKit

extension MoviesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moviesTableView.deselectRow(at: indexPath, animated: true)
        print("Reload")
    }
}
