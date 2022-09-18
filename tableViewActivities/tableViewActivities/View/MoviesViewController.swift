//
//  MoviesViewController.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 13/09/22.
//

import UIKit
import SnapKit
import TableViewReloadAnimation

class MoviesViewController: UIViewController {
    
    let controller = MoviesController()
    
    var moviesTableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubView()
        setupTableView()
        request()
        configConstraints()
    }
    func addSubView() {
        view.addSubview(moviesTableView)
    }
    
    func request() {
        controller.getRequest { [weak self] sucess in
            if sucess {
                self?.moviesTableView.reloadData(with: .simple(duration: 1, direction: .top(useCellsFrame: true), constantDelay: 0))
            }
        }
    }
    
    func setupTableView() {
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        moviesTableView.register(MoviesTableViewCell.self, forCellReuseIdentifier: MoviesTableViewCell.identifier)
    }
    
    func configConstraints() {
        moviesTableView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
    }
}
