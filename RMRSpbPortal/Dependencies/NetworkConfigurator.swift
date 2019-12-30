//
//  NetworkConfigurator.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Foundation
import Legacy

class NetworkConfigurator: Configurator {
    private let endpoint: URL
    private let timeout: TimeInterval = 60

    init(endpoint: URL) {
        self.endpoint = endpoint
    }

    private func apiHttp(logger: Logger) -> Http {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = timeout
        configuration.timeoutIntervalForResource = timeout * 2
        configuration.urlCache = nil

        let queue = DispatchQueue.global(qos: .default)
        let http = UrlSessionHttp(configuration: configuration, responseQueue: queue, logger: logger, loggerTag: "ApiHttp")
        #if DEBUG
        http.maxLoggingBodySize = 131072
        #endif
        return http
    }

    private func imageLoader(logger: Logger) -> ImageLoader {
        let megabyte = 1024 * 1024
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = timeout
        configuration.timeoutIntervalForResource = timeout * 2
        configuration.urlCache = URLCache(memoryCapacity: 50 * megabyte, diskCapacity: 100 * megabyte, diskPath: nil)

        let http = UrlSessionHttp(configuration: configuration, responseQueue: .main, logger: logger, loggerTag: "ImageHttp")
        return HttpImageLoader(http: http)
    }

    func build() -> DependencyInjectionContainer {
        let logger = NSLogLogger()
        let settingsService = UserDefaultsSettingsService(userDefaults: .standard)

        return ContainerBuilder(
            logger: logger,
            settingsService: settingsService
        ).container
    }
}
