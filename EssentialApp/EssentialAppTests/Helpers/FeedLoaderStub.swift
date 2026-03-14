//
//  FeedLoaderStub.swift
//  EssentialApp
//
//  Created by Станислав Соколов on 3/14/26.
//

import EssentialFeed

final class FeedLoaderStub: FeedLoader {

    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
