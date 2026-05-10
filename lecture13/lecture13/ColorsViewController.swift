//
//  ColorsViewController.swift
//  lecture13
//
//  Created by naat minasiani on 10/05/2026.
//

import Foundation
import UIKit

class ColorsViewController: UIViewController {

    let redView = UIView()
    let blueView = UIView()
    let greenView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        setupRedView()
        setupBlueView()
        setupGreenView()
    }

    private func setupRedView() {

        view.addSubview(redView)

        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red

        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            redView.heightAnchor.constraint(equalToConstant: 250)
        ])
    }

    private func setupBlueView() {

        view.addSubview(blueView)

        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = .systemBlue

        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            blueView.heightAnchor.constraint(equalTo: redView.heightAnchor)
        ])
    }

    private func setupGreenView() {

        view.addSubview(greenView)

        greenView.translatesAutoresizingMaskIntoConstraints = false
        greenView.backgroundColor = .systemGreen

        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 20),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
#Preview {
    ColorsViewController()
}

