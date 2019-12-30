//
//  HighlightedLabel.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Foundation

class HighlightedContentLabel: StyledLabel {
    override func stylize(text: String?) -> NSAttributedString? {
        text.map { $0 <~ Style.TextStyle.highlightedContent }
    }
}
