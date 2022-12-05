//
//  ServiceType.swift
//  FlickrApp
//
//  Created by Michael Romeu on 12/5/22.
//

import Foundation

protocol ServiceType {
    func requestModel<T: Decodable>(url: URL?, completion: @escaping (Result<T, Error>) -> Void)
    func requestRawData(url: URL?, completion: @escaping (Result<Data, Error>) -> Void)
}
