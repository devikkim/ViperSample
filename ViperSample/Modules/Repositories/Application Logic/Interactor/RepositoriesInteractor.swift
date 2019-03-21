//
//  RepositoriesInteractor.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import Foundation

class RepositoriesInteractor {
    
	// MARK: Properties
    
    weak var output: RepositoriesInteractorOutput?
    private let service: RepositoriesServiceType
    
    // MARK: Initialization
    
    init(service: RepositoriesServiceType) {
        self.service = service
    }

    // MARK: Converting entities
}

// MARK: Repositories interactor input interface

extension RepositoriesInteractor: RepositoriesInteractorInput {
    
}
