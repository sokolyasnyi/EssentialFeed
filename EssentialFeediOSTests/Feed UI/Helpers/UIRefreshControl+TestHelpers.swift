//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/15/26.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
