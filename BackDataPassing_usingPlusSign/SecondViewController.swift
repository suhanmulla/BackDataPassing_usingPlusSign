//
//  SecondViewController.swift
//  BackDataPassing_usingPlusSign
//
//  Created by Macintosh on 19/05/25.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    var delegate : MoveDataToBack? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        
        guard let delegateProperty = delegate else {return}
        
        guard let extractedFirstName = firstNameTextField.text else {return}
        guard let extractedLastName = lastNameTextField.text else {return}
        guard let extractedCity = cityTextField.text else {return}
    
        let newStudent = Student(firstName: extractedFirstName, lastName: extractedLastName, city: extractedCity)
        
        delegate?.passData(student: newStudent)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
