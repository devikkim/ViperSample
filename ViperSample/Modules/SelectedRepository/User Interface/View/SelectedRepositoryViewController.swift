//
//  SelectedRepositoryViewController.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 21/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit

class SelectedRepositoryViewController: UIViewController {
    
    // MARK: Properties
    
    var presenter: SelectedRepositoryModuleInterface?
    
    // MARK: IBOutlets
    
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: IBActions
    
    // MARK: Other Functions
    
    private func setup() {
        // all setup should be done here
    }
}

// MARK: SelectedRepositoryViewInterface
extension SelectedRepositoryViewController: SelectedRepositoryViewInterface {
    
}
