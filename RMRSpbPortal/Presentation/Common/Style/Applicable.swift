//
//  Applicable.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Foundation

protocol Applicable {
    associatedtype Applicant

    func apply(to object: Applicant)
}

precedencegroup StylePrecedence {
    associativity: left
    higherThan: AdditionPrecedence
}

infix operator <~: StylePrecedence

@discardableResult
func <~ <T: Applicable>(object: T.Applicant, applicable: T) -> T.Applicant {
    applicable.apply(to: object)
    return object
}
