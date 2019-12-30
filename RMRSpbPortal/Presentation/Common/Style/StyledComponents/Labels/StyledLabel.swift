//
//  StyledLabel.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

class StyledLabel: UILabel {
    override var text: String? {
        didSet {
            attributedText = stylize(text: text)
        }
    }

    override var attributedText: NSAttributedString? {
        get {
            super.attributedText
        }
        set {
            super.attributedText = stylize(text: newValue?.string)
        }
    }

    func stylize(text: String?) -> NSAttributedString? {
        text.map(NSAttributedString.init)
    }
}
