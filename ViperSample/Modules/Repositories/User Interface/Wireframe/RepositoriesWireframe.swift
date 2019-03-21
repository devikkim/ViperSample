//
//  RepositoriesWireframe.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit

class RepositoriesWireframe {
    weak var view: UIViewController!
    private lazy var selectedRepositoryWireframe = SelectedRepositoryWireframe()
}

extension RepositoriesWireframe: RepositoriesWireframeInput {

    var storyboardName: String {return "Repositories"}
    
    
    
    func getMainView() -> UIViewController {
        let service = RepositoriesService()
        let interactor = RepositoriesInteractor(service: service)
        let presenter = RepositoriesPresenter()
        let viewController = viewControllerFromStoryboard(of: RepositoriesViewController.self)
        
        viewController.presenter = presenter
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
    
    func showRepositoryFromWebView(repository: Repository) {
        if let navigation = view.navigationController {
            selectedRepositoryWireframe.open(for: repository, in: navigation)
        }
    }
}
