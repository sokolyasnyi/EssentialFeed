//
//  UITableView+HeaderSizing.swift
//  EssentialFeed
//
//  Created by Станислав Соколов on 3/17/26.
//

import UIKit

extension UITableView {
    func sizeTableHeaderToFit() {
        guard let header = tableHeaderView else { return }

        let size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)

        let needFrameUpdate = header.frame.height != size.height

        if needFrameUpdate {
            header.frame.size.height = size.height
            tableHeaderView = header
        }
    }
}
