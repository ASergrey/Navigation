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
        print("viewDidLoad")
        self.view.backgroundColor = .systemCyan
        let myButton = UIBarButtonItem(barButtonSystemItem: .add,
                                       target: self,
                                       action: #selector(goToInfo))
        navigationItem.rightBarButtonItem = myButton
    }
    @objc  func goToInfo(_ sender: UIButton) {
           let infoViewController = InfoViewController()

         self.navigationController?.pushViewController(infoViewController, animated: true)
       }

    }


