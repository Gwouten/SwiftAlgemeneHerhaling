//
//  DAO.swift
//  SwiftAlgemeneHerhaling
//
//  Created by mobapp15 on 24/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import Foundation

class DAO {
    
    static var sharedExpenses = DAO.init()
    
    var expenses:[Expense]
    
    private init() {
        
        expenses = [Expense]()
        expenses.append(Expense.init(title: "Theros boosters", amount: 152))
        
    }
    
    func addExpense(newExpense:Expense){
        expenses.append(newExpense)
    }
    
}
