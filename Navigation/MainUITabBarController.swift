//
//  ViewController.swift
//  Navigation
//
//  Created by Алексей Селянинов on 10.04.2022.
//

import UIKit

class MainUITabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    func setupTabBar() {
        let feedViewController = creatNavController(vc: FeedViewController(), itemName: "Feed", itemImage: "house.fill")
        let logInViewController = creatNavController(vc: LogInViewController(), itemName: "Profile", itemImage: "person.crop.circle.fill")
        viewControllers = [feedViewController, logInViewController]
}
    func creatNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage) , tag: 0 )
        //item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
         
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
    }

}
