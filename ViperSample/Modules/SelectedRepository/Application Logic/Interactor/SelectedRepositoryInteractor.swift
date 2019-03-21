//
//  SelectedRepositoryInteractor.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 21/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import Foundation

class SelectedRepositoryInteractor {
    
	// MARK: Properties
    
    weak var output: SelectedRepositoryInteractorOutput?
    private let service: SelectedRepositoryServiceType
    
    // MARK: Initialization
    
    init(service: SelectedRepositoryServiceType) {
        self.service = service
    }

    // MARK: Converting entities
}

// MARK: SelectedRepository interactor input interface

extension SelectedRepositoryInteractor: SelectedRepositoryInteractorInput {
    
}
