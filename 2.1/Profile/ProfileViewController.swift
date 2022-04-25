//
//  ProfileViewController.swift
//  2.1
//
//  Created by Anton Rusyaev on 11.04.2022.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController{
    
    let profileHeader = ProfileHeaderView()
    
    lazy var setStatusButton2:UIButton = {
       let button = UIButton()
        button.setTitle("Show ", for: .normal)
        button.layer.cornerRadius = 4
        button.tintColor = .white
        button.backgroundColor = .blue
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.opacity = 0.7
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        
        self.view.addSubview(profileHeader)
        
        profileHeader.frame = self.view.frame
        
        profileHeader.backgroundColor = .lightGray
        
        self.profileHeader.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(setStatusButton2)
        
        [profileHeader.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
         profileHeader.heightAnchor.constraint(equalToConstant: 220),
         profileHeader.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
         profileHeader.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        ] .forEach(){$0.isActive = true}
        
        [setStatusButton2.heightAnchor.constraint(equalToConstant: 50),
         setStatusButton2.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
         setStatusButton2.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
         setStatusButton2.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
        ] .forEach(){$0.isActive = true}
        
        
    }
    
    override func viewWillLayoutSubviews() {

    }
    
    
    
    
    
}
