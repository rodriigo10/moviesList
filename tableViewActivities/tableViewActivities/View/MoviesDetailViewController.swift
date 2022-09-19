//
//  MoviesDetailViewController.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 18/09/22.
//

import UIKit
import SnapKit
import SDWebImage

class MoviesDetailViewController: UIViewController {
    
    let controller = MoviesDetailController()
    
    var imageDetail: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.layer.cornerRadius = 15
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    var titleMovieDetail: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    var descriptionMovieDetail: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.layer.borderWidth = 0.5
        label.numberOfLines = 0
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        addSubviews()
        createConstraints()
        details()
    }
    
    func addSubviews() {
        view.addSubview(imageDetail)
        view.addSubview(descriptionMovieDetail)
        view.addSubview(titleMovieDetail)
    }
    
    func createConstraints () {
        
        imageDetail.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-100)
            make.width.equalTo(200)
            make.height.equalTo(300)
        }
        
        titleMovieDetail.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageDetail.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
        
        descriptionMovieDetail.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleMovieDetail.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
            make.height.equalTo(150)
        }
    }
    
    func details() {
        let imageUrl = URL(string: controller.imageMoviesDetail)
        imageDetail.sd_setImage(with: imageUrl, completed: nil)
        descriptionMovieDetail.text = controller.descriptionMovies
        titleMovieDetail.text = controller.titleMovies
    }
}
