//
//  Configurator.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Legacy

protocol Configurator {
    func build() -> DependencyInjectionContainer
}
