//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/3/26.
//

import Foundation

public final class FeedImagePresenter {

    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
