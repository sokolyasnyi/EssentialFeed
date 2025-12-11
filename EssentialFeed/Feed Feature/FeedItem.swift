//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/7/25.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
