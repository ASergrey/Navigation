//
//  PostViewController.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 25.01.2023.
//

import UIKit

class PostViewController: UIViewController {
    var titlePost: String = "SomeOne"

    override func viewDidLoad() {

        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setupButton()

    }

    // Do any additional setup after loading the view.
    private func setupButton() {
            self.view.addSubview(self.button)
            self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
            self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }



    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.layer.cornerRadius = 13
        button.setTitle("Инфо", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

     @objc private func action() {
           let infoViewController = InfoViewController()
         self.navigationController?.pushViewController(infoViewController, animated: true)

       }


    }

//
    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

