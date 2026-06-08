//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/9/26.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
