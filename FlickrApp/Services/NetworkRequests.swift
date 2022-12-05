//
//  NetworkRequests.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import Foundation

enum NetworkRequests {
    
    struct NetworkConstants {
        static let baseURL = "https://api.flickr.com/services/feeds/photos_public.gne"
    }
    
    case feed(String)
    case image(String)
    
    var url: URL? {
        
        switch self {
        case .feed(let tagQuery):
            guard var urlComponents = URLComponents(string: NetworkConstants.baseURL) else {
                return nil
            }
            // NOTE: format=json&nojsoncallback=1
            urlComponents.queryItems = [URLQueryItem(name: "tags", value: tagQuery), URLQueryItem(name: "format", value: "json"), URLQueryItem(name: "nojsoncallback", value: "1")]
            return urlComponents.url
        case .image(let urlString):
            return URL(string: urlString)
        }
        
    }
}
