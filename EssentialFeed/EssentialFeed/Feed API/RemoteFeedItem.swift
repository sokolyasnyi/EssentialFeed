//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 1/15/26.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
