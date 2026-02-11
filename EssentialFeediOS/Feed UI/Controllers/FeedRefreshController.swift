//
//  FeedRefreshController.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/9/26.
//

import UIKit

public final class FeedRefreshController: NSObject, FeedLoadingView {

    public lazy var view = loadView()

    private let presenter: FeedPresenter

    init(presenter: FeedPresenter) {
        self.presenter = presenter
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }

    @objc func refresh() {
        presenter.loadFeed()
    }

    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
