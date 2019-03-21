//
//  RepositoriesPresenter.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import Foundation

class RepositoriesPresenter {
    
	// MARK: Properties
    
    weak var view: RepositoriesViewInterface?
    var interactor: RepositoriesInteractorInput?
    var wireframe: RepositoriesWireframeInput?

    // MARK: Converting entities
}

 // MARK: Repositories module interface

extension RepositoriesPresenter: RepositoriesModuleInterface {
    
}

// MARK: Repositories interactor output interface

extension RepositoriesPresenter: RepositoriesInteractorOutput {
    
}
