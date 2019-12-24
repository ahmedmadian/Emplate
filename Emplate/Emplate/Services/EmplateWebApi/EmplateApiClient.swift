//
//  EmplateApiClient.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Alamofire

class EmplateAPiClient {
    
    let baseUrl: String
    let apiKey: String
    
    
    init(baseUrl: String, apiKey: String) {
        self.baseUrl = baseUrl
        self.apiKey = apiKey
    }
    
    fileprivate func url(for endPoint: EmplateEndpoints) -> String {
        return "\(baseUrl)\(endPoint.rawValue)"
    }
    
    func execute<parseClass:Codable>(url: String, method: HTTPMethod, parameters: [String : Any] = [:], completionHandler: @escaping (parseClass?, Error?) -> Void){
        
        Alamofire.request(url, method: method, parameters: parameters,headers: nil).responseData { (response) in
            
            switch response.result{
                
            case .success(let data):
                do {
                    let object = try JSONDecoder().decode(parseClass.self, from: data)
                    completionHandler(object, nil)
                }
                catch {
                    completionHandler(nil, nil)
                }
                
            case .failure(let error):
                completionHandler(nil, error)
            }
        }
    }
    
    
    public  func execute<parseClass:Codable>(endPoint: EmplateEndpoints, method:HTTPMethod , parameters:[String:Any] = [:], completionHandler: @escaping (parseClass?, Error?) -> Void ) {
        
        var generalParameters : [String: Any] = [
            HeaderParameterKeys.Accept : HeaderParameterValues.Accept,
            HeaderParameterKeys.ContentType : HeaderParameterValues.ContentType,
            HeaderParameterKeys.APIKey : HeaderParameterValues.APIKey
        ]
        
        
        generalParameters.merge(with: parameters)
        
        execute(url: url(for: endPoint), method: method, parameters: generalParameters) { (response, error) in
            completionHandler(response, error)
        }
    }
}

extension EmplateAPiClient {
    static var shared : EmplateAPiClient {
        return EmplateAPiClient(baseUrl: EmplateDomainInfo.shared.BaseURL, apiKey: HeaderParameterValues.APIKey)
    }
}
