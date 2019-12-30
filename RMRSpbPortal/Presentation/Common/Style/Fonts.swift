//
//  Fonts.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

extension Style {
    enum Font {
        static func main(of size: CGFloat) -> UIFont {
            UIFont.required(name: "NittiWM2-Light", size: size)
        }
        static func mainBold(of size: CGFloat) -> UIFont {
            UIFont.required(name: "NittiWM2-Medium", size: size)
        }

        static let title = mainBold(of: 28)
        static let content = main(of: 16)
        static let highlightedContent = mainBold(of: 16)
        static let caption = main(of: 14)
        static let highlightedCaption = mainBold(of: 14)
    }
}
