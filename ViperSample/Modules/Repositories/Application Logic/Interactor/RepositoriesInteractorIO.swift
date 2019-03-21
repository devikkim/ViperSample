//
//  RepositoriesInteractorIO.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//


/// It's interface for interactor
protocol RepositoriesInteractorInput: class {
    func fetchRepositories(userName: String)
}

/// It's interface for presenter
protocol RepositoriesInteractorOutput: class {
    func result(model: [Repository])
    func result(error: Error)
    func result(panicError: Error)
}
