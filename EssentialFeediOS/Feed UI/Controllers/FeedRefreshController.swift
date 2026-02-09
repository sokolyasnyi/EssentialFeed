//
//  FeedRefreshController.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/9/26.
//

import UIKit
import EssentialFeed

public final class FeedRefreshController: NSObject {
    public lazy var view: UIRefreshControl = {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }()

    private let feedLoader: FeedLoader

    var onRefresh: (([FeedImage]) -> Void)?

    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }

    @objc internal func refresh() {
        view.beginRefreshing()
        feedLoader.load() { [weak self] result in
            if let feed = try? result.get() {
                self?.onRefresh?(feed)
            }
            self?.view.endRefreshing()
        }
    }
}
