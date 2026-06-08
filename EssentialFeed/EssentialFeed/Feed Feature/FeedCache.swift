//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/14/26.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
