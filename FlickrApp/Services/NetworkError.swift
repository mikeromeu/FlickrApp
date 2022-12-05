//
//  NetworkError.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import Foundation

enum NetworkError: Error, Equatable {
    case badRequest
    case badStatusCode(Int)
    case badData
}

extension NetworkError: LocalizedError {
        
    public var errorDescription: String? {
        switch self {
        case .badRequest:
            return NSLocalizedString("Bad URLRequest, could not convert to a URLRequest", comment: "Bad URL")
        case .badData:
            return NSLocalizedString("Bad data, the data was corrupted or incorrect", comment: "Bad data")
        case .badStatusCode(let code):
            return NSLocalizedString("The network connection was improper. Received Status code \(code), Please try again later", comment: "Bad Status Code")
        }
    }
    
}
