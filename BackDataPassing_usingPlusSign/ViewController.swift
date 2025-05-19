//
//  ViewController.swift
//  BackDataPassing_usingPlusSign
//
//  Created by Macintosh on 19/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLbl: UILabel!
    
    @IBOutlet weak var lastNameLbl: UILabel!
    
    @IBOutlet weak var cityLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addBtn(_ sender: UIBarButtonItem) {
        
        let secVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secVC.delegate = self
        
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    
}

extension ViewController : MoveDataToBack {
    func passData(student: Student) {
        firstNameLbl.text = student.firstName
        lastNameLbl.text = student.lastName
        cityLbl.text = student.city
    }
}
