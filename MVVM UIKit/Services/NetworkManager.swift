//
//  NetworkManager.swift
//  MVVM UIKit
//
//  Created by Олейник Богдан on 01.04.2022.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let api = "https://swiftbook.ru//wp-content/uploads/api/api_courses"
    
    func fetchData(completion: @escaping (_ courses: [Course]) -> Void ) {
        guard let url = URL(string: api) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No Discription")
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let couses = try decoder.decode([Course].self, from: data)
                DispatchQueue.main.async {
                    completion(couses)
                }
            } catch let error {
                print("Error serialization json", error)
            }
        }.resume()
    }
    
}
