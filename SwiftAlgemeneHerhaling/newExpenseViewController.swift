//
//  newExpenseViewController.swift
//  SwiftAlgemeneHerhaling
//
//  Created by mobapp15 on 24/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import UIKit

class newExpenseViewController: UIViewController {
    
    @IBOutlet weak var newExpenseNameTF: UITextField!
    @IBOutlet weak var newExpenseAmountTF: UITextField!
    var data = DAO.sharedExpenses
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNewExpense() {
        
        if
        let newExpenseName:String = newExpenseNameTF.text,
        let newExpenseAmount:Float = Float.init(newExpenseAmountTF!.text!) {
            let newExpense = Expense.init(
                title: newExpenseName,
                amount: newExpenseAmount
            )
            data.addExpense(newExpense: newExpense)
            self.navigationController?.popViewController(animated: true)
        } else {
            let alert = UIAlertController.init(title: "Fout", message: "Geef in beide invulvelden een waarde in.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func tappedOutsideTF(_ sender: UITapGestureRecognizer) {
        newExpenseNameTF.resignFirstResponder()
        newExpenseAmountTF.resignFirstResponder()
    }
    
}
