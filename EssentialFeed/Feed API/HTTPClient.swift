//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/16/25.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
