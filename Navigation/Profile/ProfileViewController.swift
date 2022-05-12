//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Алексей Селянинов on 15.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        return profileHeaderView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        title = "Profile"
        view.addSubview(profileHeaderView)
    }
    override func viewWillLayoutSubviews() {
         super.viewWillLayoutSubviews()
        profileHeaderView.frame = CGRect(x: 0,
                                         y: view.safeAreaInsets.top,
                                         width: view.bounds.width,
                                         height: view.bounds.height -
                                         view.safeAreaInsets.top -
                                         view.safeAreaInsets.bottom)
    }
}
