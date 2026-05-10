//
//  WelcomeViewController.swift
//  lecture13
//
//  Created by naat minasiani on 10/05/2026.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {

    let imageView = UIImageView()

    let titleLabel = UILabel()
    let subtitleLabel = UILabel()

    let startButton = UIButton()
    let learnButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray6

        setupImage()
        setupLabels()
        setupButtons()
    }

    private func setupImage() {

        view.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalToConstant: 250)
        ])

        imageView.image = UIImage(named: "stive")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true

        imageView.layer.cornerRadius = 125
        imageView.layer.borderWidth = 6
    }

    private func setupLabels() {

        view.addSubview(titleLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        titleLabel.text = "Welcome to My Page"
        titleLabel.font = .systemFont(ofSize: 28, weight: .bold)

        view.addSubview(subtitleLabel)

        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        subtitleLabel.text = "This is a simple SwiftUI page"
        subtitleLabel.font = .systemFont(ofSize: 20)
        subtitleLabel.textColor = .gray
    }

    private func setupButtons() {

        let stackView = UIStackView()

        view.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 60)
        ])

        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.distribution = .fillEqually

        startButton.setTitle("Get Started", for: .normal)
        startButton.backgroundColor = .systemBlue
        startButton.layer.cornerRadius = 15

        learnButton.setTitle("Learn More", for: .normal)
        learnButton.backgroundColor = .systemGreen
        learnButton.layer.cornerRadius = 15

        stackView.addArrangedSubview(startButton)
        stackView.addArrangedSubview(learnButton)
    }
}
#Preview {
    WelcomeViewController()
}
