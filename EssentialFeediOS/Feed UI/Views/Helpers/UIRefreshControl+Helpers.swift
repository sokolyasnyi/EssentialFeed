//
//  UIRefreshControl+Helpers.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/2/26.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
