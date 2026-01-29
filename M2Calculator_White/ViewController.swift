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
        let op1 = Int(operand1TextField.text!)!
        let op2 = Int(operand2TextField.text!)!
        let op = selectOperator.title(for: .normal)
        
        if op == "+" {
            resultLabel.text = "\(op1 + op2)"
        } else if op == "-" {
            resultLabel.text = "\(op1 - op2)"
        } else if op == "*" {
            resultLabel.text = "\(op1 * op2)"
        } else if op == "/" {
            resultLabel.text = "\(op1 / op2)"
        } else {
            print("Invalid Operator")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//command+B : build your project
//command+R : run your project
