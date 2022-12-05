//
//  MockService.swift
//  FlickrAppTests
//
//  Created by Carlos Henderson on 9/3/21.
//

import UIKit
@testable import FlickrApp

class MockService: ServiceType {
    
    func requestModel<T>(url: URL?, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
        
        
        guard let url = url else {
            completion(.failure(NetworkError.badRequest))
            return
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            MockSession().fetch(url: url) { data, response, error in
                guard let data = data else {
                    completion(.failure(NetworkError.badData))
                    return
                }
                
                do {
                    let model = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(model))
                } catch {
                    print(error)
                }
            }
        }
        
        
    }
    
    func requestRawData(url: URL?, completion: @escaping (Result<Data, Error>) -> Void) {
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            guard let data = UIImage(named: "Sample")?.jpegData(compressionQuality: 1.0) else {
                completion(.failure(NetworkError.badData))
                return
            }
            
            completion(.success(data))
        }
    }
    
}
