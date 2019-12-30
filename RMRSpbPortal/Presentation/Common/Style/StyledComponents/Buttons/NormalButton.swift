//
//  NormalButton.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

class NormalButton: StyledButton {
    override func setupUI() {
        super.setupUI()
        backgroundColor = Style.Color.secondaryBackground
    }

    override func style(for state: UIControl.State) -> Style.TextStyle {
        switch state {
            case .normal:
                return Style.TextStyle.secondaryContent
            case .highlighted:
                return Style.TextStyle.highlightedSecondaryContent
            default:
                return Style.TextStyle.secondaryContent
        }
    }

    override var intrinsicContentSize: CGSize {
        CGSize(
            width: super.intrinsicContentSize.height,
            height: 48.0
        )
    }
}
