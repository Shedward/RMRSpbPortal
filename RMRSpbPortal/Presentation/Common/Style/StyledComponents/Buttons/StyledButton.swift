//
//  StyledButton.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 30.12.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

class StyledButton: ActionButton {
    override init(frame: CGRect) {
       super.init(frame: frame)

       setupUI()
    }

    required init?(coder: NSCoder) {
       super.init(coder: coder)

       setupUI()
    }

    func style(for state: UIControl.State) -> Style.TextStyle {
        Style.TextStyle.secondaryContent
    }

    func setupUI() {
       backgroundColor = Style.Color.secondaryBackground
    }

    override func setTitle(_ title: String?, for state: UIControl.State) {
       setAttributedTitle(title.map { $0 <~ style(for: state) }, for: state)
    }
}
