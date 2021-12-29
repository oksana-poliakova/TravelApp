//
//  SignInButton.swift
//  Travel App
//
//  Created by Oksana Poliakova on 29.12.2021.
//

import UIKit

class SignInButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Setup UI
    func setupUI() {
        backgroundColor = UIColor(red: 200/255.0, green: 44/255.0, blue: 44/255.0, alpha: 1.0)
        layer.cornerRadius = 16
        setTitle("Sign in", for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont(name: "Gupter-Bold", size: 24)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
