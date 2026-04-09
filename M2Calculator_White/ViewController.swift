//
//  ViewController.swift
//  M2Calculator_White
//
//  Created by White, James B. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operand2TextField: UITextField!
    @IBOutlet weak var operand1TextField: UITextField!
    @IBOutlet weak var selectOperator: UIButton!
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction = UIAlertAction(title: "+", style: .default) { _ in
            self.selectOperator.setTitle( "+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        present(actionSheet, animated:true)
        let minusAction = UIAlertAction(title: "-", style: .default) { _ in
            self.selectOperator.setTitle( "-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        present(actionSheet, animated:true)
        let multiplyAction = UIAlertAction(title: "*", style: .default) { _ in
            self.selectOperator.setTitle( "*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        present(actionSheet, animated:true)
        let divideAction = UIAlertAction(title: "/", style: .default) { _ in
            self.selectOperator.setTitle( "/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        present(actionSheet, animated:true)
        
        
    }
    @IBOutlet weak var resultLabel: UITextField!
    @IBAction func resultButton(_ sender: Any) {
        func showAlert(message: String){
                let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default)
                alert.addAction(okAction)
                present(alert, animated: true)
            }
        //        let op1 = Int(operand1TextField.text!)!
        //        let op2 = Int(operand2TextField.text!)!
        //        let op = selectOperator.title(for: .normal)!
                guard let op1 = operand1TextField.text, let a = Int(op1)else{
                    showAlert(message: "Please enter a valid number.")
                    return
                }
                guard let op2 = operand2TextField.text, let b = Int(op2)else{
                    showAlert(message: "Please enter a valid number.")
                    return
                }
                guard let op = selectOperator.title(for: .normal), op != "?" else{
                    showAlert(message: "Please select an operator.")
                    return
                }
                
                var result: Int? = nil
                switch op {
                case "+":
                    result = a + b
                case "-":
                    result = a - b
                case "*":
                    result = a * b
                case "/":
                    result = a / b
                default:
                    print("Please select an operator.")
                }
                guard let result = result else{
                    return
                }
                resultLabel.text = "\(result)"
    
                operand1TextField.resignFirstResponder()
                operand2TextField.resignFirstResponder()
            }
            
            
            override func viewDidLoad() {
                super.viewDidLoad()
                operand1TextField.delegate = self
                operand2TextField.delegate = self
                // Do any additional setup after loading the view.
            }


        }

extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard !string.isEmpty else { return true }
        guard let _ = Int(string) else{ return false }
        
        return true
    }
}
