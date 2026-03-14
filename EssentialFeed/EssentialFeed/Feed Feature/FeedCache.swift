//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/14/26.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
