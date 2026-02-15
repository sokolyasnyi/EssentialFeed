//
//  FeedViewController+TestHelpers.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/15/26.
//

import UIKit
import EssentialFeediOS

extension FeedViewController {
    func simulateAppearance() {
        if !isViewLoaded {
            loadViewIfNeeded()
            replaceRefreshControlWithFakeForiOS17Support()
        }

        beginAppearanceTransition(true, animated: false)
        endAppearanceTransition()
    }

    func replaceRefreshControlWithFakeForiOS17Support() {
        let fakeRefreshControl = FakeUIRefreshControl()

        refreshControl?.allTargets.forEach { target in
            refreshControl?.actions(forTarget: target,
                                    forControlEvent: .valueChanged)?.forEach { action in
                fakeRefreshControl.addTarget(target, action: Selector(action), for: .valueChanged)
            }
        }

        refreshControl = fakeRefreshControl
    }

    func simulateUserInitiatedFeedReload() {
        refreshControl?.simulatePullToRefresh()
    }

    @discardableResult
    func simulateFeedImageViewVisible(at index: Int) -> FeedImageCell? {
        feedImageView(at: index) as? FeedImageCell
    }

    @discardableResult
    func simulateFeedImageViewNotVisible(at index: Int) -> FeedImageCell? {
        let view = simulateFeedImageViewVisible(at: index)

        let delegate = tableView.delegate
        let index = IndexPath(row: index, section: feedImageSection)
        delegate?.tableView?(tableView, didEndDisplaying: view!, forRowAt: index)
        return view
    }

    func simulateFeedImageViewNearVisible(at index: Int) {
        let ds = tableView.prefetchDataSource
        let index = IndexPath(row: index, section: feedImageSection)
        ds?.tableView(tableView, prefetchRowsAt: [index])
    }

    func simulateFeedImageViewNotNearVisible(at index: Int) {
        simulateFeedImageViewNearVisible(at: index)

        let ds = tableView.prefetchDataSource
        let index = IndexPath(row: index, section: feedImageSection)
        ds?.tableView?(tableView, cancelPrefetchingForRowsAt: [index])
    }

    var isShowingLoadingIndicator: Bool {
        refreshControl?.isRefreshing == true
    }

    func numberOfRenderedFeedImageViews() -> Int {
        tableView.numberOfRows(inSection: feedImageSection)
    }

    func feedImageView(at row: Int) -> UITableViewCell? {
        let ds = tableView.dataSource
        let index = IndexPath(row: row, section: feedImageSection)
        return ds?.tableView(tableView, cellForRowAt: index)
    }

    private var feedImageSection: Int {
        0
    }
}

private class FakeUIRefreshControl: UIRefreshControl {
    private var _isRefreshing = false

    override var isRefreshing: Bool { _isRefreshing }

    override func beginRefreshing() {
        _isRefreshing = true
    }

    override func endRefreshing() {
        _isRefreshing = false
    }
}
