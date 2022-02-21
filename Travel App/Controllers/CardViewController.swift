//
//  CardViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 11.01.2022.
//

import UIKit

class CardViewController: BaseViewController {
    // MARK: - Properties
    
    private let cardImageView = UIImageView(frame: .zero)
    private var placeCards: PlaceCards? = nil
    
    init(placeCards: PlaceCards) {
        self.placeCards = placeCards
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        setCardImage()
    }
    
    // MARK: - Set up card image
    private func setCardImage() {
        cardImageView.image = placeCards?.image
        cardImageView.contentMode = .scaleAspectFit
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        /// Appearance
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cardImageView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            cardImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cardImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cardImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            cardImageView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
    
}
