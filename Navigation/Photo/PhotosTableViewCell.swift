//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Алексей Селянинов on 04.07.2022.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {

    private let photosView: UIView = {
        let photosView = UIView()
        photosView.translatesAutoresizingMaskIntoConstraints = false
        
        return photosView
    }()
    
    private let title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Photos"
        title.font = .boldSystemFont(ofSize: 24)
        
        return title
    }()
    
    private let arrowImageView: UIImageView = {
          let view = UIImageView()
          view.translatesAutoresizingMaskIntoConstraints = false
          view.image = UIImage(systemName: "arrow.right")
          view.tintColor = .black
          return view
      }()
    
    private let photo1: UIImageView = {
        let photo1 = UIImageView()
        photo1.image = UIImage(named: "sneakers_1")
        photo1.layer.cornerRadius = 6
        photo1.clipsToBounds = true
        photo1.translatesAutoresizingMaskIntoConstraints = false
        photo1.contentMode = .scaleToFill
        return photo1
    }()
    
    private let photo2: UIImageView = {
        let photo2 = UIImageView()
        photo2.image = UIImage(named: "sneakers_2")
        photo2.layer.cornerRadius = 6
        photo2.clipsToBounds = true
        photo2.translatesAutoresizingMaskIntoConstraints = false
        photo2.contentMode = .scaleToFill
        return photo2
    }()
    
    private let photo3: UIImageView = {
        let photo3 = UIImageView()
        photo3.image = UIImage(named: "sneakers_3")
        photo3.layer.cornerRadius = 6
        photo3.clipsToBounds = true
        photo3.translatesAutoresizingMaskIntoConstraints = false
        photo3.contentMode = .scaleToFill
        return photo3
    }()
    
    private let photo4: UIImageView = {
        let photo4 = UIImageView()
        photo4.image = UIImage(named: "sneakers_4")
        photo4.layer.cornerRadius = 6
        photo4.clipsToBounds = true
        photo4.translatesAutoresizingMaskIntoConstraints = false
        photo4.contentMode = .scaleToFill
        return photo4
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            layout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func awakeFromNib() {
            super.awakeFromNib()

        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)


        }
        
        
        private func layout () {
            
            [photosView, title, photo1, photo2, photo3, photo4].forEach {contentView.addSubview($0)}
            
            NSLayoutConstraint.activate([
                // MARK: photosView
                photosView.topAnchor.constraint(equalTo: contentView.topAnchor),
                photosView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                photosView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                photosView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
                // MARK: title
                title.topAnchor.constraint(equalTo: photosView.topAnchor, constant: 12),
                title.leadingAnchor.constraint(equalTo: photosView.leadingAnchor, constant: 12),
                // MARK: photo1
                photo1.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 12),
                photo1.bottomAnchor.constraint(equalTo: photosView.bottomAnchor, constant: -12),
                photo1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
                photo1.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 48) / 4),
                photo1.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 48) / 4),
                // MARK: photo2
                photo2.centerYAnchor.constraint(equalTo: photo1.centerYAnchor),
                photo2.bottomAnchor.constraint(equalTo: photosView.bottomAnchor, constant: -12),
                photo2.leadingAnchor.constraint(equalTo: photo1.trailingAnchor, constant: 8),
                photo2.heightAnchor.constraint(equalTo: photo1.widthAnchor),
                photo2.widthAnchor.constraint(equalTo: photo1.widthAnchor),
                // MARK: photo3
                photo3.centerYAnchor.constraint(equalTo: photo1.centerYAnchor),
                photo3.bottomAnchor.constraint(equalTo: photosView.bottomAnchor, constant: -12),
                photo3.leadingAnchor.constraint(equalTo: photo2.trailingAnchor, constant: 8),
                photo3.heightAnchor.constraint(equalTo: photo1.widthAnchor),
                photo3.widthAnchor.constraint(equalTo: photo1.widthAnchor),
                // MARK: photo4
                photo4.centerYAnchor.constraint(equalTo: photo1.centerYAnchor),
                photo4.bottomAnchor.constraint(equalTo: photosView.bottomAnchor, constant: -12),
                photo4.leadingAnchor.constraint(equalTo: photo3.trailingAnchor, constant: 8),
                photo4.heightAnchor.constraint(equalTo: photo1.widthAnchor),
                photo4.widthAnchor.constraint(equalTo: photo1.widthAnchor),
            ])
}
}
