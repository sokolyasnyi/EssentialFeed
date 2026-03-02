//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/2/26.
//

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
