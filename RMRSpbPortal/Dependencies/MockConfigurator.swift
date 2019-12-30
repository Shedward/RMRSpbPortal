//
//  MockConfigurator.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Legacy

class MockConfigurator: Configurator {
    func build() -> DependencyInjectionContainer {
        let logger = NSLogLogger()
        let settingsService = UserDefaultsSettingsService(userDefaults: .standard)

        return ContainerBuilder(
            logger: logger,
            settingsService: settingsService
        ).container
    }
}
