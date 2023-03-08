//
//  ProfileHeaderView.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 16.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    lazy var screenWidth = UIScreen.main.bounds.width

    private var photoView: UIImageView =  {
        let photoView = UIImageView()
        photoView.image = #imageLiteral(resourceName: "Simba")
        photoView.layer.cornerRadius = 50
        photoView.layer.borderWidth = 3
        photoView.layer.borderColor = UIColor.white.cgColor
        photoView.layer.opacity = 1
        photoView.clipsToBounds = true
        photoView.translatesAutoresizingMaskIntoConstraints = false
        return photoView
    }()


    private let mainLabel : UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.frame = CGRect(x: 150, y: 27, width: 200, height: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let statusLabel : UILabel = {
        let label = UILabel()
        label.text = "Waiting status"
        label.textColor = .gray
        label.font  = UIFont(name: "regular", size: 14)
//        label.frame = CGRect(x: 150, y: 75, width: 200, height: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
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
//        button.frame = CGRect(x: 16, y: 160, width: (screenWidth - 32), height: 40)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let statusTextfield: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 12
        textField.placeholder = "  Write your status"
//        textField.frame = CGRect(x: 150, y: 110, width: 200, height: 40)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()



    func setupLayout(){
        addSubview(photoView)
        addSubview(mainLabel)
        addSubview(statusTextfield)
        addSubview(statusButton)
        addSubview(statusLabel)

        NSLayoutConstraint.activate([
            photoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            photoView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            photoView.heightAnchor.constraint(equalToConstant: 100),
            photoView.widthAnchor.constraint(equalToConstant: 100),
            mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            mainLabel.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: 30),
            statusButton.topAnchor.constraint(equalTo: photoView.bottomAnchor, constant: 42),
            statusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
            statusLabel.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: 30),
            statusLabel.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -64),
            statusTextfield.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: 30),
            statusTextfield.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusTextfield.heightAnchor.constraint(equalToConstant: 40),
            statusTextfield.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
            
        ])


    }


    @objc func buttonAction (){
        statusLabel.text =  statusTextfield.text
        print(statusLabel.text!)
        statusTextfield.text = ""
    }
}
