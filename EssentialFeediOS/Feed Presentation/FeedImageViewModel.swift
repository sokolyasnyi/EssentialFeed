//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/10/26.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        location != nil
    }
}
