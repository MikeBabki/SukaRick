//
//  NetworkManager.swift
//  SukaRick
//
//  Created by Макар Тюрморезов on 18.01.2023.
//

import Foundation

class NetworkManager {
    
    func getResult(page: Int, perPage: Int,completion: @escaping(Result<[CharactersModel]?, Error>) -> Void) {
    
        var urlString = "https://rickandmortyapi.com/api/character/?page=19"
        var url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { data, _, error in
            guard let data = data else {
                completion(.failure(error!))
                return
            }
            do {
                let result = try JSONDecoder().decode([Result].self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
