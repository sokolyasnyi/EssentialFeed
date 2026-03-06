//
//  UIControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 2/15/26.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
