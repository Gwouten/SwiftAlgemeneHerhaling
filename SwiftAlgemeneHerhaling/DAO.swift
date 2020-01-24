//
//  DAO.swift
//  SwiftAlgemeneHerhaling
//
//  Created by mobapp15 on 24/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import Foundation

class DAO {
    
    var expenses:[Expense]
    
    init() {
        
        expenses = [Expense]()
        expenses.append(Expense.init(title: "Theros Boosters", amount: 35))
        expenses.append(Expense.init(title: "Eldraine Boosters", amount: 3.5))
        expenses.append(Expense.init(title: "M20 Boosters", amount: 7))
        expenses.append(Expense.init(title: "War of the Spark Boosters", amount: 10.5))
        expenses.append(Expense.init(title: "Ravnica Allegiance Boosters", amount: 350))
        expenses.append(Expense.init(title: "Guilds of Ravnica Boosters", amount: 17.5))
        
    }
    
}
