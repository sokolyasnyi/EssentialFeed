//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/2/26.
//

public struct ResourceErrorViewModel {
    public let message: String?

    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }

    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
