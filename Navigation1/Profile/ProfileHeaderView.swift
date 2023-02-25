//
//  ProfileHeaderView.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 16.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {

    private let photoView: UIView =  {
        let photoView = UIView()
        photoView.layer.cornerRadius = 50
        photoView.layer.borderWidth = 3
        photoView.layer.borderColor = UIColor.white.cgColor
        return photoView
    }()

    private let mainLabel : UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    private let statusLabel : UILabel = {
        let label = UILabel()
        label.text = "Waiting status"
        label.textColor = .gray
        label.font  = UIFont(name: "regular", size: 14)
        return label
    }()


    private let statusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4
        button.setTitle("Show status", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
return button
    }()

    private let statusTextfield: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 12
        textField.placeholder = "Write your status"
return textField
    }()


     func setupLayout(){
        addSubview(photoView)
        addSubview(mainLabel)
        addSubview(statusLabel)
        addSubview(statusTextfield)
        addSubview(statusButton)
        NSLayoutConstraint.activate([
            photoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            photoView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor , constant: 16),
            photoView.widthAnchor.constraint(equalToConstant: 125),
            photoView.heightAnchor.constraint(equalToConstant: 125)
        ])
    }
    }
