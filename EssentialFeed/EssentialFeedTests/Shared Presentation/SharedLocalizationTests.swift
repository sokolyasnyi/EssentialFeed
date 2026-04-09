//
//  SharedLocalizationTests.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 4/6/26.
//

import XCTest
import EssentialFeed

final class SharedLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }

    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
}
