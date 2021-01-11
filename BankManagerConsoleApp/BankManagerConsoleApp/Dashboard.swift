//
//  Dashboard.swift
//  BankManagerConsoleApp
//
//  Created by 임리나 on 2021/01/09.
//

import Foundation

struct Dashboard {
    static func printMenu() {
        print(Menu.description, terminator: " ")
    }
    
    static func printStatus(for client: Client, about message: String) {
        let message = String(format: message, client.waitingNumber, client.priority.description, client.businessType.description)
        let format = DateFormatter()
        format.dateFormat = "ss.S"
        let now = Date()
        let date = format.string(from: now)
        print(message + " \(date)")
    }
    
    static func printCloseMessage(_ number: Int, _ time: TimeInterval?) {
        guard let time = time else {
            print(BankError.unknown.description)
            return
        }
        let message = String(format: Message.close, number, time)
        print(message)
    }
}