//
//  GastosApp.swift
//  Gastos
//
//  Created by Erasmo J.F Da Silva on 07/11/22.
//

import SwiftUI

@main
struct GastosApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
