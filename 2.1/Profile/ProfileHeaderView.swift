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
        self.addSubview(cat)
        self.addSubview(label)
        self.addSubview(label2)
        self.addSubview(button)
        
    }
    
    let button:UIButton = {
       let button = UIButton(frame: CGRect(x: 16, y: 132, width: UIScreen.main.bounds.width-32, height: 50))
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
        return button
    }()
    
    @objc func tap () {
        print ("all right")
    }
    
    let label: UILabel = {
        let label = UILabel(frame: CGRect(x: 200, y: 27, width: 120, height: 32))
        label.font = .boldSystemFont(ofSize: 18)
        label.text = "JDUN"
        label.center.x = UIScreen.main.bounds.width/2
        label.textAlignment = .center
        return label
    }()
    
    let label2: UILabel = {
       let label2 = UILabel(frame: CGRect(x: 150, y: 100, width: 150, height: 32))
        label2.textColor = .gray
        label2.font = .systemFont(ofSize: 14)
        label2.text = "some text"
        label2.center.x = UIScreen.main.bounds.width/2
        label2.textAlignment = .center
        
        
        return label2
    }()
    
    let cat: UIImageView = {
        let cat = UIImageView(frame: CGRect(x: 16, y: 16, width: 100, height: 100))
        cat.layer.cornerRadius = 50
        cat.layer.borderWidth = 3
        cat.layer.borderColor = UIColor.white.cgColor
        cat.layer.masksToBounds = true
        cat.image = UIImage(named: "papa")
        return cat
    }()
   

}



