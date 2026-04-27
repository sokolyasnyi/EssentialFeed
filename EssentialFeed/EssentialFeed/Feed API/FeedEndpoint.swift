//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 4/27/26.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
