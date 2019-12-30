//
//  Dependencies.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Legacy

protocol DependencyInjectionContainerDependency {
    var container: DependencyInjectionContainer! { get set }
}

protocol LoggerDependency {
    var logger: Logger! { get set }
}

protocol SettingsServiceDependency {
    var settingsService: SettingService! { get set }
}
