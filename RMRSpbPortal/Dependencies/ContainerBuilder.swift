//
//  ContainerBuilder.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Legacy

struct ContainerBuilder {
    let container: DependencyInjectionContainer

    init(
        logger: Logger,
        settingsService: SettingService
    ){
        let container = Odin()
        container.register { (object: inout SettingsServiceDependency) in
            object.settingsService = settingsService
        }
        container.register { (object: inout LoggerDependency) in
            object.logger = SimpleTaggedLogger(logger: logger, for: object)
        }
        container.register { (object: inout DependencyInjectionContainerDependency) in
            object.container = container
        }
        self.container = container
    }
}
