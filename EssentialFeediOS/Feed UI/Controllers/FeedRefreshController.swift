//
//  FeedRefreshController.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/9/26.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

public final class FeedRefreshController: NSObject, FeedLoadingView {

    @IBOutlet internal var view: UIRefreshControl?

    var delegate: FeedRefreshViewControllerDelegate?

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view?.beginRefreshing()
        } else {
            view?.endRefreshing()
        }
    }

    @IBAction func refresh() {
        delegate?.didRequestFeedRefresh()
    }
}
