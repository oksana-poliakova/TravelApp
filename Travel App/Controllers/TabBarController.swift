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
        view.backgroundColor = .white
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = UIColor(red: 200/255.0, green: 44/255.0, blue: 44/255.0, alpha: 1.0)
        tabBar.unselectedItemTintColor = UIColor(red: 218/255.0, green: 152/255.0, blue: 152/255.0, alpha: 1.0)
        setupTabBar()
    }
    
    func setupTabBar() {
        viewControllers = [
            createNavController(for: MainViewController(), title: "Planes", image: UIImage(named: "plane.pdf")),
            createNavController(for: MainViewController(), title: "Restaurants", image: UIImage(named: "cafe.pdf")),
            createNavController(for: MainViewController(), title: "Places", image: UIImage(named: "building.pdf"))
        ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }

}
