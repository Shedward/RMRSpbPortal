//
//  Required.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

extension UIColor {
    static func required(named name: String) -> UIColor {
        guard let color = UIColor(named: name) else {
            fatalError("There is no requred color named '\(name)'")
        }

        return color
    }
}

extension UIFont {
    static func required(name: String, size: CGFloat) -> UIFont {
        guard let font = UIFont(name: name, size: size) else {
            fatalError("There is no required font with name '\(name)' size '\(size)'")
        }

        return font
    }
}

extension UIImage {
    static func required(named name: String) -> UIImage {
        guard let image = UIImage(named: name) else {
            fatalError("There is no required image named \(name)")
        }

        return image
    }
}
