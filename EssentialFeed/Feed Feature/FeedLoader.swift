//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/7/25.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func loadFeed(completion: @escaping (LoadFeedResult) -> Void)
}
