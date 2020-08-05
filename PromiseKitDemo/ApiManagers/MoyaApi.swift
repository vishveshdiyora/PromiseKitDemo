//
//  MoyaApi.swift
//  PromiseKitDemo
//
//  Created by Vishvesh ibl@2019 on 16/04/20.
//  Copyright © 2020 human.solutions. All rights reserved.
//

import Foundation
import Moya

enum Api{
    case employeelist
}

extension Api : TargetType{
    var baseURL: URL {
        return URL(string: "https://dummy.restapiexample.com/api/v1")!
    }
    
    var path: String {
        return "/employees"
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return "".data(using: .utf8)!
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
    
}

let provider = MoyaProvider<Api>()
