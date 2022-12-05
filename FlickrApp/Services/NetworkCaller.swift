//
//  NetworkCaller.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import Foundation

class NetworkCaller {
    
    let session: Session
    
    init(session: Session = URLSession.shared) {
        self.session = session
    }
    
}

extension NetworkCaller: ServiceType {
    
    func requestModel<T>(url: URL?, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
        
        self.handleErrors(url: url) { result in
            switch result {
            case .success(let data):
                do {
                    let model = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(model))
                } catch {
                    print(error)
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
    
    func requestRawData(url: URL?, completion: @escaping (Result<Data, Error>) -> Void) {
        
        self.handleErrors(url: url) { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
    
    private func handleErrors(url: URL?, completion: @escaping (Result<Data, Error>) -> Void) {
        
        guard let url = url else {
            completion(.failure(NetworkError.badRequest))
            return
        }
        
        self.session.fetch(url: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse, !(200..<300).contains(httpResponse.statusCode) {
                completion(.failure(NetworkError.badStatusCode(httpResponse.statusCode)))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.badData))
                return
            }
            
            completion(.success(data))
        }
    
    }
    
    
}
