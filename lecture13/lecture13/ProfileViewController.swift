//
//  ProfileViewController.swift
//  lecture13
//
//  Created by naat minasiani on 10/05/2026.
//

import Foundation

import UIKit

class ProfileViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    let profileImageView = UIImageView()
    
    let nameLabel = UILabel()
    let professionLabel = UILabel()
    let emojiLabel = UILabel()
    
    let cameraButton = UIButton()
    let closeButton = UIButton()
    let heartButton = UIButton()
    let linkButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        setupBackgroundImage()
        setupProfileImage()
        setupLabels()
        setupButtons()
    }
    
    private func setupBackgroundImage() {
        
        view.addSubview(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(
                equalTo: view.topAnchor
            ),
            
            backgroundImageView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor
            ),
            
            backgroundImageView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor
            ),
            
            backgroundImageView.heightAnchor.constraint(
                equalToConstant: 300
            )
        ])
        
        backgroundImageView.image = UIImage(named: "bulding")
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.clipsToBounds = true
    }
  
    private func setupProfileImage() {
        
        view.addSubview(profileImageView)
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            profileImageView.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            ),
            
            profileImageView.topAnchor.constraint(
                equalTo: backgroundImageView.bottomAnchor,
                constant: -95
            ),
            
            profileImageView.widthAnchor.constraint(
                equalToConstant: 180
            ),
            
            profileImageView.heightAnchor.constraint(
                equalToConstant: 180
            )
        ])
        
        profileImageView.image = UIImage(named: "stive")
        
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true
        
        profileImageView.layer.cornerRadius = 90
        profileImageView.layer.borderWidth = 5
        profileImageView.layer.borderColor = UIColor.systemPurple.cgColor
    }
    
    
    private func setupLabels() {


        view.addSubview(nameLabel)

        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            nameLabel.topAnchor.constraint(
                equalTo: profileImageView.bottomAnchor,
                constant: 30
            ),

            nameLabel.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            )
        ])

        nameLabel.text = "სახელი გვარი"

        nameLabel.font = UIFont.systemFont(
            ofSize: 32,
            weight: .bold
        )

        nameLabel.textColor = .black


        view.addSubview(professionLabel)

        professionLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            professionLabel.topAnchor.constraint(
                equalTo: nameLabel.bottomAnchor,
                constant: 10
            ),

            professionLabel.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            )
        ])

        professionLabel.text = "@iOS Dev"

        professionLabel.textColor = .gray

        professionLabel.font = UIFont.systemFont(
            ofSize: 24,
            weight: .regular
        )

        view.addSubview(emojiLabel)

        emojiLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            emojiLabel.topAnchor.constraint(
                equalTo: professionLabel.bottomAnchor,
                constant: 10
            ),

            emojiLabel.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            )
        ])

        emojiLabel.text = "♫ ⛹︎ 📖"
        emojiLabel.font = UIFont.systemFont(ofSize: 35)

        emojiLabel.textAlignment = .center
    }
    private func setupButtons() {
        
        let stackView = UIStackView()
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(
                equalTo: emojiLabel.bottomAnchor,
                constant: 50
            ),
            
            stackView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 30
            ),
            
            stackView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -30
            ),
            
            stackView.heightAnchor.constraint(
                equalToConstant: 70
            )
        ])
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        setupButtonStyle(
            button: cameraButton,
            imageName: "camera"
        )
        
        setupButtonStyle(
            button: closeButton,
            imageName: "xmark"
        )
        
        setupButtonStyle(
            button: heartButton,
            imageName: "heart"
        )
        
        setupButtonStyle(
            button: linkButton,
            imageName: "link"
        )
        
        stackView.addArrangedSubview(cameraButton)
        stackView.addArrangedSubview(closeButton)
        stackView.addArrangedSubview(heartButton)
        stackView.addArrangedSubview(linkButton)
    }
    
    private func setupButtonStyle(
        button: UIButton,
        imageName: String
    ) {
        
        button.backgroundColor = .systemGray3
        
        button.layer.cornerRadius = 20
        
        let image = UIImage(
            systemName: imageName
        )?.withConfiguration(
            UIImage.SymbolConfiguration(
                pointSize: 28,
                weight: .medium
            )
        )
        
        button.setImage(image, for: .normal)
        
        button.tintColor = .black
    }
}
#Preview {
    ProfileViewController()
}
