//
//  ViewController.swift
//  PromiseKitDemo
//
//  Created by Vishvesh ibl@2019 on 16/04/20.
//  Copyright © 2020 human.solutions. All rights reserved.
//

import UIKit
import PromiseKit

class ViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var mysecondView: UIView!
    @IBOutlet weak var myTableView: UITableView!
    
    //MARK:- Variables
    var loader = UIActivityIndicatorView()
    var employeeList : [data]?
    
    //MARK:- Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

        loader.style = UIActivityIndicatorView.Style.large
        loader.center = self.view.center
        loader.color = .black
        self.view.addSubview(loader)
        mysecondView.isHidden = true
        loader.startAnimating()
        let nib = UINib(nibName: "EmployeeTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "EmployeeTableViewCell")
        
        let _ =  ApiManager.shared.fetchEmployeeData()
            .done{ datas in
                self.employeeList = datas
                self.myTableView.reloadData()
                self.loader.stopAnimating()
                self.mysecondView.isHidden = false
            }.catch{error in
                print(error)
            }
    }

}

//MARK:- TableViewDelegate Methods
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employeeList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeTableViewCell", for: indexPath) as! EmployeeTableViewCell
        cell.employeeName.text = employeeList![indexPath.row].employee_name
        cell.employeeAge.text = employeeList![indexPath.row].employee_age
        cell.employeeSalary.text = employeeList![indexPath.row].employee_salary
        let view = UIView()
        view.backgroundColor = .white
        cell.selectedBackgroundView = view
        return cell
    }
}
