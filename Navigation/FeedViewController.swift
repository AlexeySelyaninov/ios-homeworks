//
//  FeedViewController.swift
//  Navigation
//
//  Created by Алексей Селянинов on 15.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Feed"
        button()
    }
    
    func button () {
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
        
        view.addSubview(button)
        
        button.setTitle("Post", for: .normal)
        button.backgroundColor = .systemRed
        button.center = view.center
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
    }
    
    @objc func onClick () {
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        //self.present(postViewController, animated: true, completion: nil)
        postViewController.title = "My Post"
    }
}
