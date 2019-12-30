//
//  MainMenuViewController.swift
//  RMRSpbPortal
//
//  Created by Vladislav Maltsev on 03.11.2019.
//  Copyright © 2019 RedMadRobot. All rights reserved.
//

import UIKit

class MainMenuViewController: BaseViewController {
    @IBOutlet private var buttonsStack: UIStackView!

    var menuItems: [MainMenuItem] = [] {
        didSet {
            updateUI()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    private func updateUI() {
        guard isViewLoaded else { return }

        buttonsStack.arrangedSubviews.forEach { $0.removeFromSuperview() }

        let logoView = UIImageView(image: UIImage.required(named: "common.logo"))
        logoView.contentMode = .scaleAspectFit
        buttonsStack.addArrangedSubview(logoView)

        menuItems.forEach { item in
            let button = NormalButton()
            button.setTitle(item.title, for: .normal)
            button.action = item.action
            buttonsStack.addArrangedSubview(button)
        }
    }
}
