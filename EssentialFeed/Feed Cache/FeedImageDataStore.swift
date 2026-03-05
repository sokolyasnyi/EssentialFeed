//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/5/26.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
