//
//  AppDelegate.swift
//  2.1
//
//  Created by Anton Rusyaev on 11.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ViewController()
        viewController.view.backgroundColor = .systemCyan
        let profileViewController = ProfileViewController()
//        profileViewController.view.backgroundColor = .lightGray
    
        
        let tabBar = UITabBarController()
        
        let profile = UINavigationController()
        profile.tabBarItem = UITabBarItem(title: "Profile", image: .actions, tag: 1)
        profile.setViewControllers([profileViewController], animated: true)
        let feed = UINavigationController()
        feed.tabBarItem = UITabBarItem(title: "Feed", image: .checkmark, tag: 0)
        feed.setViewControllers([viewController], animated: true)
        
        tabBar.viewControllers = [feed, profile]
        
        self.window?.rootViewController = tabBar
        
        self.window?.makeKeyAndVisible()
        
        return true
    }


}

