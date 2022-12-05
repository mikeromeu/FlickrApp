//
//  FlickrFeed.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import Foundation

struct FlickrFeed: Decodable, Equatable {
    let title: String
    let link: String
    let description: String
    let modified: String
    let generator: String
    let items: [ImageFeed]
}

struct ImageFeed: Decodable, Equatable {
    let title: String
    let link: String
    let media: Media
    let description: String
    let published: String
    let author: String
    let tags: String
}

struct Media: Decodable, Equatable {
    let imageLink: String
    
    enum CodingKeys: String, CodingKey {
        case imageLink = "m"
    }
}
