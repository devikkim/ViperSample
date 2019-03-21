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
    var repository: Repository?
    
    // MARK: Initialization
    
    init(service: SelectedRepositoryServiceType, repository: Repository?) {
        self.service = service
        self.repository = repository
    }

    // MARK: Converting entities
}

// MARK: SelectedRepository interactor input interface

extension SelectedRepositoryInteractor: SelectedRepositoryInteractorInput {
    func viewIsReady() {
        self.output?.result(repository: repository ?? Repository(url: "", name: ""))
    }
    
    
}
