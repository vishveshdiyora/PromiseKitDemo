//
//  EmployeesModel.swift
//  PromiseKitDemo
//
//  Created by Vishvesh ibl@2019 on 16/04/20.
//  Copyright © 2020 human.solutions. All rights reserved.
//

import Foundation
import ObjectMapper

class employe: Mappable{
    
    var status: String?
    var data: [data]?
    
    required init?(map: Map) {
        status = ""
        data = nil
        
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        data <- map["data"]
        
    }
}

class data: Mappable{
    
    var id: Int?
    var employee_name: String?
    var employee_salary: String?
    var employee_age: String?
    
    required init?(map: Map) {
        id = nil
        employee_name = ""
        employee_salary = ""
        employee_age = ""
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        employee_name <- map["employee_name"]
        employee_salary <- map["employee_salary"]
        employee_age <- map["employee_age"]
        
    }

}
