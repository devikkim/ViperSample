//
//  API.swift
//  ViperSample
//
//  Created by InKwon Devik Kim on 20/03/2019.
//  Copyright © 2019 InKwon Devik Kim. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_SwiftyJSON
import SwiftyJSON

class API {
    static let shared = API()
    
    func request(url: String, method: HTTPMethod, completion: @escaping (DataResponse<JSON>) -> ()) {
        Alamofire.request(url, method: method, parameters: nil, encoding: URLEncoding.default)
            .responseSwiftyJSON { dataResponse in
                completion(dataResponse)
        }
    }
}
