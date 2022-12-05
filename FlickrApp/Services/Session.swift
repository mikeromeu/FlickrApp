//
//  Session.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import Foundation

protocol Session {
    func fetch(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}
