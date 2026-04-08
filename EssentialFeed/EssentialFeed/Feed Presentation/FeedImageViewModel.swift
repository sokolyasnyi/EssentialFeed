//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/3/26.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        location != nil
    }
}
