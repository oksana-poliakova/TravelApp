//
//  SignInUIView.swift
//  Travel App
//
//  Created by Oksana Poliakova on 27.12.2021.
//

import UIKit

class PreviewContent: UIView {
    
    var title = UILabel()
    let buttonWithUnderline = UnderlineButton()
    let buttonsStackView = UIStackView()
    let mainStackView = UIStackView()
    
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        title.text = "Enjoy every moment with us!"
        title.textColor = .white
        title.font = UIFont.boldSystemFont(ofSize: 20)
        title.textAlignment = .center
        addSubview(title)
        
        buttonWithUnderline.backgroundColor = UIColor(red: 200/255.0, green: 44/255.0, blue: 44/255.0, alpha: 1.0)
        buttonWithUnderline.setTitle("Create an account", for: .normal)
        buttonWithUnderline.translatesAutoresizingMaskIntoConstraints = false
        buttonWithUnderline.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        addSubview(buttonWithUnderline)
        
        buttonsStackView.axis = .vertical
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.spacing = 2
        buttonsStackView.alignment = .fill
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
     
        [buttonsStackView, buttonWithUnderline].forEach {
            mainStackView.addArrangedSubview($0)
        }

        addSubview(buttonsStackView)
        
        NSLayoutConstraint.activate([
            buttonsStackView.topAnchor.constraint(equalTo: topAnchor),
            buttonsStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonsStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsStackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    @objc func buttonAction(sender: UIButton) {
        
    }
}
