//
//  RemoteFeedLoaderTests.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 12/8/25.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://any-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()

    private init() {}

    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestDatafromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()

        sut.load()

        XCTAssertNotNil(client.requestedURL)

    }
}
