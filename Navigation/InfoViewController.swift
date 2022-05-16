//
//  InfoViewController.swift
//  Navigation
//
//  Created by Алексей Селянинов on 15.04.2022.
//

import UIKit


class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "Info Post"
        button()
    }
    func button () {
     let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
     
     view.addSubview(button)
     
     button.setTitle("PUSH ME", for: .normal)
     button.backgroundColor = .systemBrown
     button.center = view.center
     button.layer.cornerRadius = 10
     button.layer.masksToBounds = true
     
     button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
     }
     
     @objc func onClick () {
         let alert = UIAlertController(title: "Don't touch me", message: "Touch me", preferredStyle: .alert)
     // self.navigationController?.pushViewController(infoViewController, animated: true)
     self.present(alert, animated: true, completion: nil)
         let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {_ in
             print("cancel")
             })
         alert.addAction(cancelAction)
         let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: {_ in
             print("delete")
             })
         alert.addAction(deleteAction)
     }
}
