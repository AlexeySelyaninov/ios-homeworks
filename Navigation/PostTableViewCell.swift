//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Алексей Селянинов on 30.06.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    private let contentWhiteView: UIView = {
        let contentWhiteView = UIView()
        contentWhiteView.translatesAutoresizingMaskIntoConstraints = false
        contentWhiteView.backgroundColor = .white
        return contentWhiteView
    }()
    
    private let postImage: UIImageView = {
        let postImage = UIImageView()
        postImage.translatesAutoresizingMaskIntoConstraints = false
        postImage.backgroundColor = .black
        postImage.contentMode = .scaleAspectFit
        return postImage
    }()
    
    private let author: UILabel = {
        let author = UILabel()
        author.translatesAutoresizingMaskIntoConstraints = false
        author.font = .systemFont(ofSize: 20, weight: .bold)
        author.textColor = .black
        author.numberOfLines = 2
        return author
    }()
    
    let postDescription: UILabel = {
        let postDescription = UILabel()
        postDescription.translatesAutoresizingMaskIntoConstraints = false
        postDescription.font = .systemFont(ofSize: 14, weight: .regular)
        postDescription.textColor = .systemGray
        postDescription.numberOfLines = 0
        return postDescription
    }()
    
    let postLikes: UILabel = {
        let postLikes = UILabel()
        postLikes.translatesAutoresizingMaskIntoConstraints = false
        postLikes.font = .systemFont(ofSize: 16, weight: .regular)
        postLikes.textColor = .black
        postLikes.numberOfLines = 1
        return postLikes
    }()
    
    let postViews: UILabel = {
        let postViews = UILabel()
        postViews.translatesAutoresizingMaskIntoConstraints = false
        postViews.font = .systemFont(ofSize: 16, weight: .regular)
        postViews.textColor = .black
        postViews.numberOfLines = 1
        return postViews
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .red
        customizeCell()
        layout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(post: Post) {
        postImage.image = post.image
        author.text = post.author
        postDescription.text = post.description
//        postLikes.text = "Likes: \(post.likes)"
//        postViews.text = "Views: \(post.views)"
    }
    
    private func customizeCell() {
        contentWhiteView.backgroundColor = .systemGray6
        
    }
    private func layout() {
        [contentWhiteView, postImage, author, postDescription].forEach{contentView.addSubview($0)}
        
        NSLayoutConstraint.activate([
            contentWhiteView.topAnchor.constraint(equalTo: contentView.topAnchor),
            contentWhiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentWhiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            contentWhiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        NSLayoutConstraint.activate([
            author.leadingAnchor.constraint(equalTo: contentWhiteView.leadingAnchor, constant: 16),
            author.trailingAnchor.constraint(equalTo: contentWhiteView.trailingAnchor, constant: -16),
            author.topAnchor.constraint(equalTo: contentWhiteView.topAnchor, constant: 16),
        ])
        NSLayoutConstraint.activate([
            postImage.topAnchor.constraint(equalTo: author.bottomAnchor, constant: 12),
            postImage.leadingAnchor.constraint(equalTo: contentWhiteView.leadingAnchor),
            postImage.widthAnchor.constraint(equalTo: contentWhiteView.widthAnchor),
            postImage.heightAnchor.constraint(equalTo: contentWhiteView.widthAnchor),
            postImage.bottomAnchor.constraint(equalTo: contentWhiteView.bottomAnchor),
        ])
        NSLayoutConstraint.activate([
            postDescription.leadingAnchor.constraint(equalTo: contentWhiteView.leadingAnchor, constant: 16),
            postDescription.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 16),
            postDescription.trailingAnchor.constraint(equalTo: contentWhiteView.trailingAnchor, constant: -16),
        ])
//        NSLayoutConstraint.activate([
//            postLikes.leadingAnchor.constraint(equalTo: contentWhiteView.leadingAnchor, constant: 16),
//            postLikes.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
//            postLikes.bottomAnchor.constraint(equalTo: contentWhiteView.bottomAnchor, constant: -16),
//        ])
//        NSLayoutConstraint.activate([
//            postViews.trailingAnchor.constraint(equalTo: contentWhiteView.trailingAnchor, constant: -16),
//            postViews.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
//            postViews.bottomAnchor.constraint(equalTo: contentWhiteView.bottomAnchor, constant: -16)
//        ])
    }
}
