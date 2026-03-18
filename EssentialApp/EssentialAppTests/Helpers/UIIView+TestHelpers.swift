//
//  UIIView+TestHelpers.swift
//  EssentialApp
//
//  Created by Станислав Соколов on 3/18/26.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
