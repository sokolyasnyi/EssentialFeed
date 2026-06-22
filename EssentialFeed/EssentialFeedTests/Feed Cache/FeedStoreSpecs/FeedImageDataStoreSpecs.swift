//
//  FeedImageDataStoreSpecs.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 6/8/26.
//

import Foundation

protocol FeedImageDataStoreSpecs {
    func test_retrieveImageData_deliversNotFoundWhenEmpty() async throws
    func test_retrieveImageData_deliversNotFoundWhenStoredDataURLDoesNotMatch() async throws
    func test_retrieveImageData_deliversFoundDataWhenThereIsAStoredImageDataMatchingURL() async throws
    func test_retrieveImageData_deliversLastInsertedValue() async throws
}
