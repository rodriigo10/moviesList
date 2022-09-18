//
//  MoviesTableViewCell.swift
//  tableViewActivities
//
//  Created by Rodrigo Garcia on 14/09/22.
//

import UIKit
import SnapKit
import SDWebImage

class MoviesTableViewCell: UITableViewCell {

    static let identifier = "cell"
    
    var imageMovies: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.layer.cornerRadius = 15
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    var labelMovies: UILabel = {
        let label = UILabel(frame: .zero)
        label.backgroundColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1.0)
        label.layer.cornerRadius = 08
        label.clipsToBounds = true
        label.font = .systemFont(ofSize: 15)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        contentView.addSubview(labelMovies)
        contentView.addSubview(imageMovies)
        createConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createConstraints () {

        imageMovies.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().inset(5)
            make.leading.equalToSuperview()
            make.width.equalTo(130)
            make.height.equalTo(200)
        }
        
        labelMovies.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.leading.equalTo(imageMovies.snp.trailing).offset(10)
            make.trailing.equalToSuperview().inset(5)
            make.height.equalTo(50)
        }
    }
    
    func makeCells(object: Content? ) {
        let imageURL = URL(string: object?.images?.first?.url ?? "")
        
        imageMovies.sd_setImage(with: imageURL, completed: nil)

        labelMovies.text = object?.title ?? ""
    }
}
