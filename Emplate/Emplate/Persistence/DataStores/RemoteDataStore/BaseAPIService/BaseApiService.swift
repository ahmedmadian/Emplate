//
//  BaseApiService.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Alamofire

class BaseAPIService {
    func execute<Model:Codable>(endPoint: Endpoint, completionHandler: @escaping (Swift.Result<Model, Error>) -> Void ) {
        
        var generalParameters = [String:Any]()
        generalParameters.merge(with: endPoint.parameters)
        
        var generalHeaders = [String: String]()
        generalHeaders.merge(with: endPoint.headers)
        
        Alamofire.request(endPoint.fullURL, method: Alamofire.HTTPMethod.init(rawValue: endPoint.method.rawValue)!, parameters: generalParameters, headers: generalHeaders).responseData { (response) in
            switch response.result {
            case .success(let data):
                do {
                    let object = try JSONDecoder().decode(Model.self, from: data)
                    completionHandler(Swift.Result.success(object))
                }
                catch {
                    completionHandler(Swift.Result.failure(BaseAPIServiceError.parsingError))
                }
            case .failure(let error):
                completionHandler(Swift.Result.failure(BaseAPIServiceError.serverError(message: error.localizedDescription, code: error.code)))
            }
        }
    }
}
