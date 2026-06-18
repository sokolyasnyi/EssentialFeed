//
//  ResourceErrorView.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 4/7/26.
//

import Foundation

@MainActor
public protocol ResourceErrorView {
    func display(_ viewModel: ResourceErrorViewModel)
}
