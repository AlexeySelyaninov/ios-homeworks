//
//  Post.swift
//  Navigation
//
//  Created by Алексей Селянинов on 15.04.2022.
//

import UIKit

struct Post {
            let author: String
            let description: String
            let image: UIImage
            let likes: Int
            let views: Int
        
static func makePost() -> [Post] {
    var post = [Post]()
    
    post.append(Post(author: "Первый пост", description: "История компании Coca‑Cola с 1886 года — все самые важные события каждого десятилетия.", image: UIImage(named: "coca")!, likes: 1, views: 2))
    post.append(Post(author: "Второй пост", description: "String", image: UIImage(named: "nike")!, likes: 3, views: 4))
    post.append(Post(author: "Третий пост", description: "String", image: UIImage(named: "samsung")!, likes: 5, views: 6))
    post.append(Post(author: "Четвертый пост", description: "String", image: UIImage(named: "dg")!, likes: 7, views: 8))

return post
}
    
}

