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
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        
        
    }
    
    override func viewWillLayoutSubviews() {

    

        self.view.addSubview(profileHeader)
        
        profileHeader.frame = self.view.frame
        
        profileHeader.backgroundColor = .lightGray
        
//        self.view.addSubview(profileHeader.cat)
    }
    
    
    


}
