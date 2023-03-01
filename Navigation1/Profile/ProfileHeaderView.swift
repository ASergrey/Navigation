//
//  ProfileHeaderView.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 16.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {
   lazy var screenWidth = UIScreen.main.bounds.width


    lazy private var photoView: UIImageView =  {
        let photoView = UIImageView()
        photoView.layer.cornerRadius = 50
        photoView.image = #imageLiteral(resourceName: "Simba")
        photoView.layer.borderWidth = 3
        photoView.layer.borderColor = UIColor.white.cgColor
        photoView.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        photoView.layer.opacity = 1
//        photoView.clipsToBounds


        return photoView
    }()


    private let mainLabel : UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.frame = CGRect(x: 150, y: 27, width: 200, height: 40)
        return label
    }()

    private let statusLabel : UILabel = {
        let label = UILabel()
        label.text = "Waiting status"
        label.textColor = .gray
        label.font  = UIFont(name: "regular", size: 14)
        label.frame = CGRect(x: 150, y: 75, width: 200, height: 40)
        return label
    }()


   lazy private var statusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.setTitle("Show status", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.frame = CGRect(x: 16, y: 160, width: (screenWidth - 32), height: 40)
       button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
return button
    }()

    private let statusTextfield: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 12
        textField.placeholder = "Write your status"
        textField.frame = CGRect(x: 150, y: 110, width: 200, height: 40)
return textField
    }()


     func setupLayout(){
        addSubview(photoView)
        addSubview(mainLabel)
        addSubview(statusLabel)
        addSubview(statusTextfield)
        addSubview(statusButton)
    }

    @objc func buttonAction (){
        statusLabel.text =  statusTextfield.text
        statusTextfield.text = ""
    }
    }
