//
//  LibraryViewController.swift
//  HW14-Photos
//
//  Created by Onix qq on 24.07.22.
//

import UIKit

class LibraryViewController: UIViewController {

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    // MARK: - Settings
    
    func setupView() {
        view.backgroundColor = .systemBackground
        title = Strings.libraryTitle
    }
}
