// Created on November 2018
// Created by Mark Ison
// Created for ICS3U
// this program can compare two strings to see if they are equal

import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    
    let instructionLabel = UILabel()
    let calculateButton = UIButton()
    let answerLabel = UILabel()
    var stringOneTextField = UITextField()
    var stringTwoTextField = UITextField()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter two strings to see if the are the same"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stringOneTextField.placeholder = "Enter name"
        view.addSubview(stringOneTextField)
        stringOneTextField.translatesAutoresizingMaskIntoConstraints = false
        stringOneTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        stringOneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stringTwoTextField.placeholder = "Enter name"
        view.addSubview(stringTwoTextField)
        stringTwoTextField.translatesAutoresizingMaskIntoConstraints = false
        stringTwoTextField.topAnchor.constraint(equalTo: stringOneTextField.bottomAnchor, constant: 20).isActive = true
        stringTwoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        calculateButton.setTitle("calculate", for: .normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.titleLabel?.textAlignment = .center
        calculateButton.addTarget(self, action: #selector(returnString), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: stringTwoTextField.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func returnString() {
        
        if let stringOne : String = String(stringOneTextField.text!),  let stringTwo : String = String(stringTwoTextField.text!) {
            
            if compareString(stringOneSend: stringOne, stringTwoSend: stringTwo) == true {
                answerLabel.text = "They are the same."
            } else {
                answerLabel.text = "They are different."
            }
        } 
    }
    
    @objc func compareString(stringOneSend: String, stringTwoSend: String) -> Bool{
        // this func checks if the words are the same in all caps
        if stringOneSend.uppercased() == stringTwoSend.uppercased() {
            return true
        } else {
            return false
        }
    }
    
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
