//
//  AppDelegate.swift
//  Navigation
//
//  Created by Алексей Селянинов on 10.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainUITabBarController()
        window?.makeKeyAndVisible()
        
        return true
    }
}


