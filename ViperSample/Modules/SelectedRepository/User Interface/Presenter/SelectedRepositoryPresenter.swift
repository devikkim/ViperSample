//
//  SelectedRepositoryPresenter.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 21/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import Foundation

class SelectedRepositoryPresenter {
    
	// MARK: Properties
    
    weak var view: SelectedRepositoryViewInterface?
    var interactor: SelectedRepositoryInteractorInput?
    var wireframe: SelectedRepositoryWireframeInput?

    // MARK: Converting entities
}

 // MARK: SelectedRepository module interface

extension SelectedRepositoryPresenter: SelectedRepositoryModuleInterface {
    
}

// MARK: SelectedRepository interactor output interface

extension SelectedRepositoryPresenter: SelectedRepositoryInteractorOutput {
    
}
