//
//  SignInPreviewContent.swift
//  Travel App
//
//  Created by Oksana Poliakova on 29.12.2021.
//

import UIKit

class SignInPreviewContent: UIView {
    
    private let title = UILabel()
    private let email = UITextField()
    private let password = UITextField()
    private let textFieldsStackView = UIStackView()
    private let signInButton = SignInButton()
    private let underlineButton = UnderlineButton()
    
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
        let text = "Sign in"
        title.text = text.uppercased()
        title.textColor = UIColor(red: 200/255.0, green: 44/255.0, blue: 44/255.0, alpha: 1.0)
        title.font = UIFont(name: "Gupter-Bold", size: 40)
        title.textAlignment = .center
        addSubview(title)
        
        /// Textfield with email
        email.placeholder = "Email@gmail.com"
    
        /// Textfield with password
        password.placeholder = "*************"
        password.isSecureTextEntry = true
        
        [email, password].forEach {
            $0.backgroundColor = .white
            $0.layer.cornerRadius = 25
            $0.textColor = UIColor(red: 120/255.0, green: 166/255.0, blue: 116/255.0, alpha: 1.0)
            $0.font = UIFont(name: "Gupter-Regular", size: 16)
            $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: $0.frame.height))
            $0.leftViewMode = .always
        }
        
        /// TextFieldsStackView
        textFieldsStackView.axis = .vertical
        textFieldsStackView.distribution = .fill
        textFieldsStackView.spacing = 35
        textFieldsStackView.alignment = .center
        textFieldsStackView.translatesAutoresizingMaskIntoConstraints = false
        [title, email, password].forEach {
            textFieldsStackView.addArrangedSubview($0)
        }
        
        [textFieldsStackView, signInButton, underlineButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        
        /// Constraints
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            
            email.widthAnchor.constraint(equalToConstant: 350),
            email.heightAnchor.constraint(equalToConstant: 50),
            password.widthAnchor.constraint(equalTo: email.widthAnchor),
            password.heightAnchor.constraint(equalTo: email.heightAnchor),
            
            textFieldsStackView.topAnchor.constraint(equalTo: topAnchor),
            textFieldsStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            textFieldsStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            signInButton.topAnchor.constraint(equalTo: textFieldsStackView.bottomAnchor, constant: 35),
            signInButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 165),
            signInButton.heightAnchor.constraint(equalToConstant: 50),

            underlineButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor),
            underlineButton.centerXAnchor.constraint(equalTo: signInButton.centerXAnchor)
        ])
        
    }
}
