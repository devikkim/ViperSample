//
//  RepositoriesViewInterface.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//


/// It's interface for presneter
protocol RepositoriesViewInterface: class {
    func show(model: [Repository])
    func show(error: String)
    func showLoading()
    func hideLoading()
    func show(panicError: String)
}
