//
//  CardCollectionViewCell.swift
//  Travel App
//
//  Created by Oksana Poliakova on 05.01.2022.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupCard()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCard() {
        
    }
}
