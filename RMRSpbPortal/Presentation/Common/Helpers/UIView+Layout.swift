//
//  UIView+Layout.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 Elsewhere. All rights reserved.
//

import UIKit

extension UIView {
    func constraintToEdges(of view: UIView, withInsets insets: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -insets.left),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: insets.right),
            view.topAnchor.constraint(equalTo: topAnchor, constant: -insets.top),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: insets.bottom)
        ])
    }

    func constraintToSafeArea(of view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1.0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: trailingAnchor, multiplier: 1.0),
            topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 1.0),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: bottomAnchor, multiplier: 1.0)
        ])
    }

    func constraintToCenter(of view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: centerXAnchor),
            view.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    func constraintSize(to size: CGSize) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: size.width),
            heightAnchor.constraint(equalToConstant: size.height)
        ])
    }
}
