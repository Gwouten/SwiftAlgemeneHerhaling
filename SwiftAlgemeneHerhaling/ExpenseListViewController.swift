//
//  ExpenseListViewController.swift
//  SwiftAlgemeneHerhaling
//
//  Created by mobapp15 on 24/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import UIKit

class ExpenseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var data = DAO.sharedExpenses
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Render de table opnieuw met de geupdatete gegevens
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell:ExpenseTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ExpenseTableViewCell
        let currentExpense = data.expenses[indexPath.row]
        currentCell.expenseListTitleLbl.text  = currentExpense.title
        currentCell.expenseListAmountLbl.text = String(format:"€%.2f", currentExpense.amount)
        return currentCell
    }
    
}

