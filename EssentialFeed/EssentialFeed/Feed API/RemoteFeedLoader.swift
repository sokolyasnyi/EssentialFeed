//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/9/25.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
