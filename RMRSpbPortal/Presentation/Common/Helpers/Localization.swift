//
//  Localization.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Foundation

enum Localized {
    static func string(_ key: String) -> String {
        return NSLocalizedString(key, comment: "")
    }

    static func string(_ key: String, with args: String...) -> String {
        return String(format: string(key), arguments: args)
    }

    static func pluralString(_ key: String, count: UInt) -> String {
        return String.localizedStringWithFormat(string(key), count)
    }

    static func number(_ number: NSNumber, style: NumberFormatter.Style = .none) -> String {
        return NumberFormatter.localizedString(from: number, number: style)
    }
}
