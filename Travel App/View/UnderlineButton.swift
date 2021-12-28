//
//  SignInButtonUIButton.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class UnderlineButton: UIButton {
    
    // MARK: - Properties
    let button = UIButton()
    let underline = UIView()
    let buttonsStackView = UIStackView()

    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    func setupUI() {
        /// Button "Create an account"
        button.setTitle("Create an account", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Gupter-Bold", size: 22)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        /// Underline
        underline.backgroundColor = .white
        
        /// StackView with button "Create an account" and underline
        buttonsStackView.alignment = .fill
        buttonsStackView.distribution = .fill
        buttonsStackView.spacing = -6
        buttonsStackView.axis = .vertical
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        [button, underline].forEach {
            buttonsStackView.addArrangedSubview($0)
        }
        addSubview(buttonsStackView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            buttonsStackView.topAnchor.constraint(equalTo: topAnchor),
            buttonsStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            underline.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    @objc func buttonAction(sender: UIButton) {
        
    }
    
}
