//
//  SelectedRepositoryWireframe.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 21/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import UIKit

class SelectedRepositoryWireframe {
     weak var view: UIViewController!
}

extension SelectedRepositoryWireframe: SelectedRepositoryWireframeInput {
    
    var storyboardName: String {return "SelectedRepository"}
    
    func getMainView() -> UIViewController {
        let service = SelectedRepositoryService()
        let interactor = SelectedRepositoryInteractor(service: service)
        let presenter = SelectedRepositoryPresenter()
        let viewController = viewControllerFromStoryboard(of: SelectedRepositoryViewController.self)
        
        viewController.presenter = presenter
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
}
