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
    func fetchRepositories(userName: String) {
        self.service.fetchRepositories(userName: userName, success: {

            self.output?.result(model: $0.array?.map{
                let name = $0.dictionaryObject?["full_name"] as? String ?? ""
                let url = $0.dictionaryObject?["svn_url"] as? String ?? ""
                
                return Repository(url: url, name: name)
            } ?? [Repository]())
            
        }, failure: {
            self.output?.result(error: $0)
        })
    }
    
    
}
