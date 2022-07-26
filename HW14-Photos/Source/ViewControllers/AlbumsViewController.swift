//
//  AlbumsViewController.swift
//  HW14-Photos
//
//  Created by Onix qq on 24.07.22.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    // MARK: - Views
    
    lazy var addButton: UIBarButtonItem = {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add,
                                        target: self,
                                        action: #selector(addButtonAction))
        return addButton
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavigationBar()
    }
    
    // MARK: - Settings
    
    func setupView() {
        view.backgroundColor = .systemBackground
        title = Strings.albumTitle
    }
    
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItems = [addButton]
    }
    
    // MARK: - Actions
    
    @objc func addButtonAction(_ sender: UIBarButtonItem) {
        print("tap")
    }
}
