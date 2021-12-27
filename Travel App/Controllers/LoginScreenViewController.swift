//
//  ViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    let previewContainerView = PreviewContent()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        previewContainerView.translatesAutoresizingMaskIntoConstraints = false
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "main-screen.pdf")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        view.addSubview(backgroundImage)
        
        view.addSubview(previewContainerView)
        NSLayoutConstraint.activate([
            previewContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            previewContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            previewContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            previewContainerView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

