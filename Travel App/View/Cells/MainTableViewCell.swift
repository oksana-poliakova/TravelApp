//
//  MainTableViewCell.swift
//  Travel App
//
//  Created by Oksana Poliakova on 30.12.2021.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: cardCollectionViewCellID)
        collectionView.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    private lazy var layout = UICollectionViewFlowLayout()
    private let cardCollectionViewCellID = "CardCollectionViewCell"

    
    private let countryCards: [CountryCards] = [CountryCards(title: "Country1", image: UIImage(named: "country.pdf"), rating: 4.5),
                                                CountryCards(title: "Country2", image: UIImage(named: "country.pdf"), rating: 4.2),
                                                CountryCards(title: "Country3", image: UIImage(named: "country.pdf"), rating: 4.8)]
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        addSubview(collectionView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

}

// MARK: - UICollectionViewDelegate

extension MainTableViewCell: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource

extension MainTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        countryCards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cardCollectionViewCellID, for: indexPath) as? CardCollectionViewCell else { return UICollectionViewCell() }
        cell.backgroundColor = .blue
        return cell
    }
}

