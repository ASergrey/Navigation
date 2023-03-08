//
//  ProfileViewController.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 25.01.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    let profileHeaderView = ProfileHeaderView()
    let witdht = UIScreen.main.bounds.width

    private let newButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 4
        button.setTitle("New button", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layaut()
        profileHeaderView.setupLayout()
    }


    func layaut() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        profileHeaderView.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
        profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 0),
        profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
        newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}
