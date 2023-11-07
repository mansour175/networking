//
//  ApiRouter.swift
//  networking
//
//  Created by abdallah mansour on 07/11/2023.
//

import Foundation
import Alamofire


class ApiRouter {
    
    static let shared = ApiRouter()
    func ApiLogIn (compliton: @escaping (LogInModel?,Error?)-> Void) {
        let url = "naqawa.net/api/client/sign-in"
        let parameters = ["country_code":"00966","phone":"0509878218","device_type":"ios","device_id":"987654"]
        AF.request(url,method: .post,parameters: parameters,encoding: JSONEncoding.default).response { [weak self] response in
            guard let self = self else {return}
            switch response.result {
                
            case .success(_):
                guard let data = response.data else {return}
                do {
                    let loginData = try JSONDecoder().decode(LogInModel.self, from: data)
                    compliton(loginData,nil)
                    
                }catch let error{
                    compliton(nil,error)
                }
            case .failure(let error):
                compliton(nil,error)

            }
        }
        
    }
   
}
