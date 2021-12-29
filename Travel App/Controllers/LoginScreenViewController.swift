//
//  ViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    // MARK: - Properties
    private let previewContainerView = PreviewContent()
    private let signInPreviewContentView = SignInPreviewContent()

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
        
        /// Appearance
        [previewContainerView, signInPreviewContentView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }

        /// Constraints
        NSLayoutConstraint.activate([
            previewContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            previewContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            previewContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            signInPreviewContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            signInPreviewContentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInPreviewContentView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

