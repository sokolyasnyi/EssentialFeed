//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/4/26.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
