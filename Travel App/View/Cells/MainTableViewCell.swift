//
//  MainTableViewCell.swift
//  Travel App
//
//  Created by Oksana Poliakova on 30.12.2021.
//

import UIKit

protocol MainTableViewCellDelegate: AnyObject {
    func passPlace(place: PlaceCards)
}

class MainTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    private var size = CGSize(width: 250, height: 440)

    private var places: [PlaceCards] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        collectionView.register(CardCollectionViewCell.self, forCellWithReuseIdentifier: cardCollectionViewCellID)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isScrollEnabled = true
        layout.scrollDirection = .horizontal
        return collectionView
    }()
    
    private lazy var layout = UICollectionViewFlowLayout()
    private let cardCollectionViewCellID = "CardCollectionViewCell"
    
    /// Делаем слабым, чтобы избежать утечки памяти memory leak
    weak var delegate: MainTableViewCellDelegate?

    public var placeCards: [PlaceCards] = [PlaceCards(title: "Country", image: UIImage(named: "country.pdf"), rating: 4.5, country: "Country name", locationIcon: UIImage(named: "location.pdf")),
                                           PlaceCards(title: "Country 2", image: UIImage(named: "country.pdf"), rating: 4.5, country: "Country name", locationIcon: UIImage(named: "location.pdf")),
                                           PlaceCards(title: "Country 3", image: UIImage(named: "country.pdf"), rating: 4.5, country: "Country name", locationIcon: UIImage(named: "location.pdf"))
    ]

    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        setupUI()
        configView()
        
    }
    
    // Corner radius for cells
    private func configView() {
        clipsToBounds = false
        backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        /// Custom subviews should be added to the content view
        contentView.addSubview(collectionView)
        
        /// Constraints
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }

}

// MARK: - UICollectionViewDelegate

extension MainTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.passPlace(place: placeCards[indexPath.row])
    }
}

// MARK: - UICollectionViewDataSource

extension MainTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        placeCards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cardCollectionViewCellID, for: indexPath) as? CardCollectionViewCell else { return UICollectionViewCell() }
        cell.configurePlaces(model: placeCards[indexPath.row])
        cell.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: size.width, height: size.height)
    }
    
}
