//
//  ApiManager.swift
//  PromiseKitDemo
//
//  Created by Vishvesh ibl@2019 on 16/04/20.
//  Copyright © 2020 human.solutions. All rights reserved.
//

import Foundation
import Moya
import ObjectMapper
import PromiseKit
import Alamofire

class ApiManager {
    
    static let shared = ApiManager()
    let url = "https://dummy.restapiexample.com/api/v1/employees"
    
    private init() {
        
    }
    
    func fetchEmployeeData() -> Promise<[data]> {
        
        return Promise(){
            resolver in
            
            provider.request(.employeelist){
                result in
                switch result{
                case .success(let response):
                    let jsonString = String(bytes: response.data, encoding: .utf8)
                    let employees = employe(JSONString: jsonString!)
                    resolver.fulfill(employees!.data!)
                case .failure(let error):
                    resolver.reject(error)
                }
            }
            
            
        }
        
}

}




