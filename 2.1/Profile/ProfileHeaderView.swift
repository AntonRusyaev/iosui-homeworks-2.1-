//
//  ProfileHeaderView.swift
//  2.1
//
//  Created by Anton Rusyaev on 11.04.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupView()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setupView()
        }
    
    func setupView () {
        self.addSubview(contentView)
        [contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
         contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
         contentView.topAnchor.constraint(equalTo: topAnchor),
         contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ] .forEach(){$0.isActive = true}
        constraint()
    }
    
    lazy var setStatusButton:UIButton = {
       let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.layer.cornerRadius = 4
        button.tintColor = .white
        button.backgroundColor = .blue
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.opacity = 0.7
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    @objc func tap () {
        print ("all right")
    }
    
    lazy var fullNameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.text = "JDUN"
        label.center.x = UIScreen.main.bounds.width/2
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var statusLabel: UILabel = {
       let label2 = UILabel()
        label2.textColor = .gray
        label2.font = .systemFont(ofSize: 14)
        label2.text = "some text"
        label2.center.x = UIScreen.main.bounds.width/2
        label2.textAlignment = .center
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        
        return label2
    }()
    
    lazy var avatarImageView: UIImageView = {
        let avatarImageView = UIImageView()
//        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.masksToBounds = true
        avatarImageView.image = UIImage(named: "papa")
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false

        return avatarImageView
    }()
    
    
    lazy var contentView: UIView = {
        let contentView = UIView ()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(fullNameLabel)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(setStatusButton)
        contentView.addSubview(statusLabel)

        return contentView
    }()
    
    func constraint() {
        [fullNameLabel.centerXAnchor.constraint(
            equalTo: contentView.centerXAnchor),
         fullNameLabel.topAnchor.constraint(
            equalTo: contentView.topAnchor,
            constant: 27),
        ]
            .forEach { $0.isActive = true}
        
        [avatarImageView.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: 16),
         avatarImageView.topAnchor.constraint(
            equalTo: contentView.topAnchor,
            constant: 16),
         avatarImageView.heightAnchor.constraint(equalTo: contentView.widthAnchor,multiplier: 0.25),
         avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.heightAnchor)
         
        ]
        
            .forEach { $0.isActive = true}
        
        
        [setStatusButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
         setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
         setStatusButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
         setStatusButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
         setStatusButton.heightAnchor.constraint(equalToConstant: 50)
        ].forEach { $0.isActive = true}
        
        [statusLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
         statusLabel.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34)
        ] .forEach() {$0.isActive = true}
        
        avatarImageView.layer.cornerRadius = UIScreen.main.bounds.width * 0.25 / 2
        
    }
    
    
   

}


