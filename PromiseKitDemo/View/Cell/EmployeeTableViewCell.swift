//
//  EmployeeTableViewCell.swift
//  PromiseKitDemo
//
//  Created by Vishvesh ibl@2019 on 17/04/20.
//  Copyright © 2020 human.solutions. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    //MARK:- Outlets
    @IBOutlet weak var employeeName: UILabel!
    @IBOutlet weak var employeeAge: UILabel!
    @IBOutlet weak var employeeSalary: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
