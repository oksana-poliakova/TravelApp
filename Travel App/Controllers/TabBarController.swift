//
//  TabBarControllerViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 03.01.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupTabBar()
    }
    
    func setupTabBar() {
        viewControllers = [
            createNavController(for: MainViewController(), title: "Search", image: UIImage(named: "plane.pdf")),
            createNavController(for: MainViewController(), title: "Search", image: UIImage(named: "plane.pdf")),
            createNavController(for: MainViewController(), title: "Search", image: UIImage(named: "plane.pdf"))
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }

}
