//
//  Customers.swift
//  BankManagerUIApp
//
//  Created by Yeon on 2021/01/16.
//

import Foundation

struct Customers {
    var list: [Customer] = []
    init() {
        let randomCustomerCount = Int.random(in: 10...30)
        for waitingNumber in 1...randomCustomerCount {
            guard let customerPriority = Customer.Priority.allCases.randomElement(), let customerTask = Customer.Task.allCases.randomElement() else {
                print(StringFormattingError.unknown.localizedDescription)
                return
            }
            let customer: Customer = Customer(waitNumber: waitingNumber, priority: customerPriority, taskType: customerTask)
            list.append(customer)
        }
        
        sortByPriorityAndWaitNumber()
    }
    
    mutating func addCustomer() {
        let numberOfAddCustomer = 10
        for waitingNumber in self.list.count...self.list.count + numberOfAddCustomer {
            guard let customerPriority = Customer.Priority.allCases.randomElement(), let customerTask = Customer.Task.allCases.randomElement() else {
                print(StringFormattingError.unknown.localizedDescription)
                return
            }
            let customer: Customer = Customer(waitNumber: waitingNumber, priority: customerPriority, taskType: customerTask)
            list.append(customer)
        }
        sortByPriorityAndWaitNumber()
    }
    
    private mutating func sortByPriorityAndWaitNumber() {
        self.list.sort { (currentCustomer, nextCustomer) -> Bool in
            if currentCustomer.priority.rawValue == nextCustomer.priority.rawValue {
                return currentCustomer.waitNumber < nextCustomer.waitNumber
            }
            return currentCustomer.priority.rawValue < nextCustomer.priority.rawValue
        }
    }
}
