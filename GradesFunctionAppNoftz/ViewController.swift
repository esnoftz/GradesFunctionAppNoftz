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
    
    @IBOutlet weak var percentTextField: UITextField!
    
    @IBOutlet weak var submitButton2: UIButton!
    
    @IBOutlet weak var errorLabel2: UILabel!
    
    @IBOutlet weak var earnedTextField2: UITextField!
    
    @IBOutlet weak var totalTextField2: UITextField!
    
    @IBOutlet weak var submitButton3: UIButton!
    
    @IBOutlet weak var errorLabel3: UILabel!
    
    
    
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
    
    func errorFunction() -> String {
        return "ERROR!"
    }
    
    func percentGrade(percent: Double) -> String {
        
        if percent >= 90.0 {
            return "Your Grade: A"
        } else if percent >= 80.0 {
            return "Your Grade: B"
        } else if percent >= 70.0 {
            return "Your Grade: C"
        } else if percent >= 60.0 {
            return "Your Grade: D"
        } else {
            return "Your Grade: F"
        }
    }
    
    func percentAndLetterGrade(earned: Double, total: Double) -> String {
        
        // do this
        
    }
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        if let earnedPoints = Double(earnedTextField.text!) {
            if let totalPoints = Double(totalTextField.text!) {
                var answer = passOrFail(earned: earnedPoints, total: totalPoints)
                errorLabel.text = answer
            } else {
                errorLabel.text = errorFunction()
            }
        } else {
            errorLabel.text = errorFunction()
        }
        
    }
    
    
    @IBAction func submitAction2(_ sender: UIButton) {
        
        if let check = Double(percentTextField.text!) {
            errorLabel2.text = percentGrade(percent: check)
        } else {
            errorLabel2.text = errorFunction()
        }
        
    }
    
    @IBAction func submitAction3(_ sender: UIButton) {
        
        if let earnedPoints = Double(earnedTextField2.text!) {
            if let totalPoints = Double(totalTextField2.text!) {
                percentAndLetterGrade(earned: earnedPoints, total: totalPoints)
            } else {
                errorLabel3.text = errorFunction()
            }
        } else {
            errorLabel3.text = errorFunction()
        }
        
    }
    
    
    

}

