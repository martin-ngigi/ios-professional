//
//  AccountSummaryViewControllerAndNetworking.swift
//  Bankey
//
//  Created by Hummingbird on 30/06/2025.
//

import Foundation

import Foundation
import UIKit

struct Account: Codable {
    let id: String
    let type: AccountType
    let name: String
    let amount: Decimal
    let createdDateTime: Date
    
    static func makeSkeleton() -> Account {
        return Account(id: "1", type: .Banking, name: "Account name", amount: 0.0, createdDateTime: Date())
    }
}

extension AccountSummaryViewController {
    func fetchAccounts(forUserId userId: String, completion: @escaping (Result<[Account],NetworkError>) -> Void) {
        let url = URL(string: "https://fierce-retreat-36855.herokuapp.com/bankey/profile/\(userId)/accounts")!

        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                guard let data = data, error == nil else {
                    completion(.failure(.serverError))
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    
                    let accounts = try decoder.decode([Account].self, from: data)
                    completion(.success(accounts))
                } catch {
                    completion(.failure(.decodingError))
                }
            }
        }.resume()
    }
}
