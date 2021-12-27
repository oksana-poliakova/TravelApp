//
//  SignInButtonUIButton.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class UnderlineButton: UIButton {
    
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
    
    func setupUI() {
        button.setTitle("Create an account", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        buttonsStackView.alignment = .fill
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.spacing = 2
        buttonsStackView.axis = .vertical
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        underline.backgroundColor = .white
        
        [button, underline].forEach {
            buttonsStackView.addArrangedSubview($0)
        }
        
        addSubview(buttonsStackView)

    }
    
    @objc func buttonAction(sender: UIButton) {
        
    }
    
}
