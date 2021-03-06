//
//  RepositoriesModuleInterface.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

/// It's Interface for view
protocol RepositoriesModuleInterface: class {
    func openSelectedRepository(repository: Repository)
    func viewIsReady(userName: String)
}
