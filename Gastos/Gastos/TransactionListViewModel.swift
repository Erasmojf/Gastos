//
//  TransactionListViewModel.swift
//  Gastos
//
//  Created by Erasmo J.F Da Silva on 07/11/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import Foundation

final class TransactionListViewModel: ObservableObject {
    @Published var transactions: [Transaction] = []
    
    func getTransactions() {
       guard let url = URL(string: "https://designcode.io/date/transactions.json") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap{(data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    dump(response)
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [Transaction].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {complition in switch complition{
                
            }}, receiveValue: { [Transaction] in
                code
            })
    }
}
