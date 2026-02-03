//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/7/25.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
