//
//  CardCollectionViewCell.swift
//  Travel App
//
//  Created by Oksana Poliakova on 05.01.2022.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    private let cardImageView = UIImageView()
    private let placeNameLabel = UILabel()
    private let countryNameLabel = UILabel()
    private let locationIconImageView = UIImageView()
    private let iconAndCountryNameStackView = UIStackView()
        
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configure places
    
    public func configurePlaces(model: PlaceCards) {
        cardImageView.image = model.image
        placeNameLabel.text = model.title
        countryNameLabel.text = model.country
        locationIconImageView.image = model.locationIcon
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        placeNameLabel.textColor = .white
        placeNameLabel.font = UIFont(name: "Gupter-Bold", size: 28)
        
        countryNameLabel.textColor = UIColor(red: 200/255.0, green: 44/255.0, blue: 44/255.0, alpha: 1.0)
        placeNameLabel.font = UIFont(name: "Gupter-Bold", size: 24)
        
        locationIconImageView.tintColor = UIColor(red: 200/255.0, green: 44/255.0, blue: 44/255.0, alpha: 1.0)
        
        /// StackView with icon and country name
        iconAndCountryNameStackView.axis = .horizontal
        iconAndCountryNameStackView.distribution = .fill
        iconAndCountryNameStackView.spacing = 20
        iconAndCountryNameStackView.alignment = .center

        [countryNameLabel, locationIconImageView].forEach {
            iconAndCountryNameStackView.addArrangedSubview($0)
        }
        
        [cardImageView, placeNameLabel, iconAndCountryNameStackView].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        /// Constraints
        NSLayoutConstraint.activate([
            cardImageView.topAnchor.constraint(equalTo: topAnchor),
            cardImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            cardImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            placeNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            placeNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            placeNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            placeNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            iconAndCountryNameStackView.topAnchor.constraint(equalTo: placeNameLabel.bottomAnchor, constant: 20),
            iconAndCountryNameStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            iconAndCountryNameStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            iconAndCountryNameStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
