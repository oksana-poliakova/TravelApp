//
//  SignInUIView.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class PreviewContent: UIView {
    // MARK: - Properties
    
    private var title = UILabel()
    private let signInButton = SignInButton()
    private let buttonWithUnderline = UnderlineButton()
    private let containerOfButtonAndTitleStackView = UIStackView()
    private let mainStackView = UIStackView()
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    func setupUI() {
        /// Title
        title.text = "Enjoy every \n moment with us!"
        title.numberOfLines = 0
        title.textColor = .white
        title.font = UIFont(name: "Gupter-Bold", size: 40)
        title.textAlignment = .center
        addSubview(title)
        
        /// Sign in button
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(signInButton)
        
        /// Button with underline
        buttonWithUnderline.translatesAutoresizingMaskIntoConstraints = false
        buttonWithUnderline.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        addSubview(buttonWithUnderline)
        
        /// StackView with title and Sign in button
        containerOfButtonAndTitleStackView.axis = .vertical
        containerOfButtonAndTitleStackView.distribution = .fill
        containerOfButtonAndTitleStackView.spacing = 15
        containerOfButtonAndTitleStackView.alignment = .center
        containerOfButtonAndTitleStackView.translatesAutoresizingMaskIntoConstraints = false
        [title, signInButton].forEach {
            containerOfButtonAndTitleStackView.addArrangedSubview($0)
        }
        
        /// StackView with ContainerOfButtonAndTitleStackView and buttonWithUnderline
        mainStackView.axis = .vertical
        mainStackView.distribution = .fill
        mainStackView.spacing = 25
        mainStackView.alignment = .center
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        [containerOfButtonAndTitleStackView, buttonWithUnderline].forEach {
            mainStackView.addArrangedSubview($0)
        }
        addSubview(mainStackView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            signInButton.widthAnchor.constraint(equalToConstant: 165),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    // MARK: - Change state for Sign in
    
    func changeState() {
       
        
    }
    
    @objc func buttonAction(sender: UIButton) {
        
    }
}
