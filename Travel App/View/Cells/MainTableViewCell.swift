//
//  MainTableViewCell.swift
//  Travel App
//
//  Created by Oksana Poliakova on 30.12.2021.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
