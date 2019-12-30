//
//  MainMenuFlow.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 02.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import Legacy
import UIKit

class MainMenuFlow: DependencyInjectionContainerDependency {
    var container: DependencyInjectionContainer!

    var mainMenuViewController: UIViewController!

    func start() -> UIViewController {
        let mainMenuViewController = self.mainMenuViewController(items: [
            MainMenuItem(
                title: Localized.string("myFlow.title"),
                action: { self.showAlert(with: Localized.string("myFlow.title")) }
            ),
            MainMenuItem(
                title: Localized.string("anotherFlow.title"),
                action: { self.showAlert(with: Localized.string("anotherFlow.title")) }
            )
        ])

        self.mainMenuViewController = mainMenuViewController

        return mainMenuViewController
    }

    let mainMenuStoryboard = UIStoryboard(name: "MainMenu", bundle: nil)

    private func mainMenuViewController(items: [MainMenuItem]) -> UIViewController {
        let controller: MainMenuViewController = mainMenuStoryboard.instantiate()
        controller.menuItems = items
        return controller
    }

    private func showAlert(with text: String) {
        let alertViewController = UIAlertController(title: nil, message: text, preferredStyle: .alert)
        alertViewController.addAction(
            UIAlertAction(
                title: Localized.string("common.cancel"),
                style: .cancel,
                handler: nil
            )
        )
        mainMenuViewController.present(alertViewController, animated: true, completion: nil)
    }
}
