//
//  ViewForHeader.swift
//  Travel App
//
//  Created by Oksana Poliakova on 01.01.2022.
//

import UIKit

class SearchSectionView: UIView {
    
    private let searchImage = UIImage(named: "search.pdf")
    private let title = UILabel()
    private let textField = UITextField()
    private let searchButton = UIButton()
    private let containerView = UIView()
    private let containerStackView = UIStackView()
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    private func setupUI() {
        /// Title for header
        title.text = "Where Do \n You Want To Go?"
        title.textColor = .black
        title.numberOfLines = 0
        title.font = UIFont(name: "Gupter-Bold", size: 38)
        
        /// TextField
        textField.backgroundColor = UIColor(red: 194/255, green: 190/255, blue: 190/255, alpha: 1.0)
        textField.layer.cornerRadius = 25
        textField.textColor = .black
        textField.font = UIFont(name: "Gupter-Bold", size: 16)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.placeholder = "Search..."
        
        /// Search button
        searchButton.backgroundColor = UIColor(red: 200/255, green: 44/255, blue: 44/255, alpha: 1.0)
        searchButton.layer.cornerRadius = 25
        searchButton.setImage(searchImage, for: .normal)
        searchButton.tintColor = .white
        
        /// Container view for title and container view
  
        containerStackView.alignment = .fill
        containerStackView.distribution = .fill
        containerStackView.spacing = 20
        containerStackView.axis = .vertical
        
        /// Container for textField and search button
        [textField, searchButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview($0)
        }
        
        [title, containerView].forEach {
            containerStackView.addArrangedSubview($0)
        }
        
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(containerStackView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: containerView.topAnchor),
            textField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            textField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            searchButton.topAnchor.constraint(equalTo: containerView.topAnchor),
            searchButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            searchButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            searchButton.widthAnchor.constraint(equalToConstant: 65),
            searchButton.heightAnchor.constraint(equalToConstant: 65),
            
            containerView.widthAnchor.constraint(equalToConstant: 400),
            containerView.heightAnchor.constraint(equalToConstant: 65),
            
            containerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            containerStackView.topAnchor.constraint(equalTo: topAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
