//
//  ViewController.swift
//  GradesFunctionAppNoftz
//
//  Created by EVANGELINE NOFTZ on 9/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var earnedTextField: UITextField!
    
    @IBOutlet weak var totalTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(passOrFail(earned: 20.3, total: 70.6))
        
        
    }

    
    func passOrFail(earned: Double, total: Double) -> String {
        
        var percent = (earned/total)*100.0
        if (percent >= 60) {
            return "You passed! :)"
        } else {
            return "You failed! :("
        }
        
    }
    
    func nothing() -> String {
        
        return "Error! This is nothing!"
        
    }
    
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        var earnedPoints = Double(earnedTextField.text!)!
        var totalPoints = Double(totalTextField.text!)!
        
        var answer = passOrFail(earned: earnedPoints, total: totalPoints)
        
        errorLabel.text = answer
        
    }
    
    
    
    
    
    

}

