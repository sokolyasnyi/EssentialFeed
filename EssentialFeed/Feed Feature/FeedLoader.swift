//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/7/25.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
