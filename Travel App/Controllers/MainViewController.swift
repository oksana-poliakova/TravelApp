//
//  MainViewController.swift
//  Travel App
//
//  Created by Oksana Poliakova on 30.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Properties
    
    private let idMainCell = "idMainCell"
    
    private lazy var tableView: UITableView = {
        /// Appearance
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        tableView.separatorColor = .clear
        
        /// Cells
       // tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: idMainCell)
        
        /// Delegate & DataSource
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
//
//        view.backgroundColor = UIColor(red: 224/255.0, green: 215/255.0, blue: 215/255.0, alpha: 1.0)
        view.addSubview(tableView)
        setNavigationBar()
        setupTableView()
    }
    
    // MARK: - Set up navigation bar
    func setNavigationBar() {
        let imageView = UIImageView(image: UIImage(named: "avatar"))
        
        let imageItem = UIBarButtonItem(customView: imageView)
        navigationItem.leftBarButtonItem = imageItem
        
        let menuBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu"), style: .done, target: self, action: #selector(menuTapped))
        navigationItem.rightBarButtonItem = menuBarButtonItem
    }
    
    @objc func menuTapped() {
        print("")
    }
    
    // MARK: - TableView
    func setupTableView() {
        /// Contstraints
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idMainCell) as? MainTableViewCell else { return UITableViewCell() }
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = SearchSectionView()
        return header
    }
    
    
}
