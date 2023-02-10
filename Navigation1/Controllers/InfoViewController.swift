//
//  InfoViewController.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 26.01.2023.
//

import UIKit

class InfoViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 13
        button.setTitle("Показать алерт", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
        title = "Information"
        self.view.addSubview(self.button)
        setupButton()
    }


    private func setupButton() {
            self.view.addSubview(self.button)
            self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
            self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }


    @objc  func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Внимание!", message: "Внимание, внимание!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Спасибо за внимание!", style: .cancel){ _ in
            alert.dismiss(animated: true)
        })
        alert.addAction(UIAlertAction(title: "OK!", style: .default){ _ in
            alert.dismiss(animated: true)
            print("Кнопка ОК")
        })
        self.present(alert, animated: true)
    }
}   
