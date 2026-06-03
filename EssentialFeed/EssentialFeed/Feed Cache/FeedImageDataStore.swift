//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/5/26.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
