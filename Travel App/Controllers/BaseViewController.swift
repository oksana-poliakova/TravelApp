//
//  BaseViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 07.01.2022.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.scrollEdgeAppearance = appearance
        }
        
        if #available(iOS 13.0, *) {
           let appearance = UINavigationBarAppearance()
           appearance.configureWithOpaqueBackground()
           appearance.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
           appearance.shadowColor = .clear
           appearance.shadowImage = UIImage()
           navigationController?.navigationBar.standardAppearance = appearance;
           navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
            
       }
        
    }
}
