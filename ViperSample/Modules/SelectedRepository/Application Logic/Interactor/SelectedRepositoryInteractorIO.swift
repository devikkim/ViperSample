//
//  SelectedRepositoryInteractorIO.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 21/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

protocol SelectedRepositoryInteractorInput: class {
    func viewIsReady()
}

protocol SelectedRepositoryInteractorOutput: class {
    func result(repository: Repository)
}
