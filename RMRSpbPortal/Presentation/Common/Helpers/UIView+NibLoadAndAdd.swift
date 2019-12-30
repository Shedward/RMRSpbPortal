//
//  UIView+NibLoadAndAdd.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 Elsewhere. All rights reserved.
//

import UIKit

extension UIView {
    /// Loads view with nib-file and inserts it into self.
    @discardableResult
    func loadAndAddSubViewFromNib(name: String) -> UIView {
        let view = UIView.fromNib(name: name, bundle: Bundle(for: type(of: self)), owner: self)
        view.frame = bounds

        addSubview(view)
        view.constraintToEdges(of: self)

        return view
    }
}
