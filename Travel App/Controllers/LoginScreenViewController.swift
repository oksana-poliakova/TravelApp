//
//  ViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    // MARK: - Properties
    let previewContainerView = PreviewContent()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Setup UI
    func setupUI(){
        /// Background image
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "main-screen.pdf")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        view.addSubview(backgroundImage)
        
        /// PreviewContainerView
        previewContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(previewContainerView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            previewContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            previewContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            previewContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor) 
        ])
    }
}

