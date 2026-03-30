//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/30/26.
//

import Foundation

final class ImageCommentsMapper {

    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }

    private static var OK_200: Int { 200 }

    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteImageCommentsLoader.Error.invalidData
        }

        return root.items
    }
}
