//
//  RepositoriesServiceType.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import Foundation
import SwiftyJSON


/// It's interface for Service
protocol RepositoriesServiceType: class {
    func fetchRepositories(userName: String, success: @escaping (JSON) -> (), failure: @escaping (Error) -> ())
}

extension RepositoriesServiceType {
    func fetchRepositories(userName: String, success: @escaping (JSON) -> (), failure: @escaping (Error) -> ()) {
        let url = "https://api.github.com/users/\(userName)/repos"
        
        API.shared.request(url: url, method: .get) { dataResponse in
            if let json = dataResponse.value {
                success(json)
            } else {
                if let error = dataResponse.error {
                    failure(error)
                }
            }
        }
    }
}


