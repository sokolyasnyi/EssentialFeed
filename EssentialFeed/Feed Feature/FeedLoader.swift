//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/7/25.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
