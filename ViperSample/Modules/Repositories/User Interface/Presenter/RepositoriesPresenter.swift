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
    func viewIsReady(userName: String) {
        // TODO: Repository를 받을때 indicator
        view?.showLoading()
        interactor?.fetchRepositories(userName: userName)
    }
    
    func refreshData(userName: String) {
        interactor?.fetchRepositories(userName: userName)
    }
    
    func openSelectedRepository(repository: Repository) {
        // TODO: View로 부터 사용자 입력을 받으면 해당 url로 이동
        wireframe?.showRepositoryFromWebView(repository: repository)
    }
}

// MARK: Repositories interactor output interface

extension RepositoriesPresenter: RepositoriesInteractorOutput {
    func result(model: [Repository]) {
        view?.hideLoading()
        view?.show(model: model)
    }
    
    func result(error: Error) {
        view?.show(error: error.localizedDescription)
    }
    
    func result(panicError: Error) {
        view?.hideLoading()
        view?.show(panicError: panicError.localizedDescription)
    }
    
    
}
