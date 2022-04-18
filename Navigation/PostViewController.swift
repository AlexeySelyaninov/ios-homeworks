//
//  PostViewController.swift
//  Navigation
//
//  Created by Алексей Селянинов on 15.04.2022.
//

import UIKit



 class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        button()
    }
     func button () {
         let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
         
         view.addSubview(button)
         
         button.setTitle("Info", for: .normal)
         button.backgroundColor = .systemBrown
         button.center = view.center
         button.layer.cornerRadius = 10
         button.layer.masksToBounds = true
         
         button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
     }
     
     @objc func onClick () {
         let infoViewController = InfoViewController()
        // self.navigationController?.pushViewController(infoViewController, animated: true)
         self.present(infoViewController, animated: true, completion: nil)
         infoViewController.title = "Info Post"
     }
}
