//
//  TextStyles.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

extension Style {
    struct TextStyle {
        let font: UIFont
        let color: UIColor
        let letterSpacing: CGFloat
        let additionalAttributes: [NSAttributedString.Key: Any]?

        init(
            font: UIFont,
            color: UIColor,
            letterSpacing: CGFloat = 0.0,
            additionalAttributes: [NSAttributedString.Key: Any]? = nil
        ) {
            self.font = font
            self.color = color
            self.letterSpacing = letterSpacing
            self.additionalAttributes = additionalAttributes
        }

        var attributes: [NSAttributedString.Key: Any] {
            var attributes: [NSAttributedString.Key: Any] = [
                .font: font,
                .foregroundColor: color,
                .kern: letterSpacing
            ]

            if let additionalAttributes = additionalAttributes {
                attributes.merge(additionalAttributes) { $1 }
            }

            return attributes
        }

        func withColor(_ color: UIColor) -> TextStyle {
            TextStyle(
                font: font,
                color: color,
                letterSpacing: letterSpacing,
                additionalAttributes: additionalAttributes
            )
        }

        func withAlpha(_ alpha: CGFloat) -> TextStyle {
            TextStyle(
                font: font,
                color: color.withAlphaComponent(alpha),
                letterSpacing: letterSpacing,
                additionalAttributes: additionalAttributes
            )
        }

        static let title = TextStyle(font: Font.title, color: Color.content)
        static let content = TextStyle(font: Font.content, color: Color.content)
        static let highlightedContent = TextStyle(font: Font.highlightedContent, color: Color.content)
        static let secondaryContent = TextStyle(font: Font.content, color: Color.secondaryContent)
        static let highlightedSecondaryContent = TextStyle(font: Font.highlightedContent, color: Color.secondaryContent)
        static let caption = TextStyle(font: Font.caption, color: Color.content)
        static let highlightedCaption = TextStyle(font: Font.highlightedContent, color: Color.content)
    }
}

@discardableResult
func <~ (string: String, style: Style.TextStyle) -> NSAttributedString {
    NSAttributedString(string: string, attributes: style.attributes)
}
