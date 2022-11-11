//
//  PreviewData.swift
//  Gastos
//
//  Created by Erasmo J.F Da Silva on 07/11/22.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "07/11/2022", institution: "NU", account: "Visa", merchant: "Apples", amount: 12.56, type: "debit", categoryId: 007, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
