//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/16/25.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL) async throws -> (Data, HTTPURLResponse)
}
