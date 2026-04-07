//
//  ResourceLoadingView.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 4/7/26.
//

import Foundation

public protocol ResourceLoadingView: AnyObject {
    func display(_ viewModel: ResourceLoadingViewModel)
}
