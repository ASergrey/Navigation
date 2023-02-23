//
//  ProfileViewController.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 25.01.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    private let profileHeaderView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        profileHeaderView.setupViews()

    }

   override func viewWillLayoutSubviews(){
super.viewWillLayoutSubviews()


       view.addSubview(profileHeaderView)
       profileHeaderView.backgroundColor = .lightGray
       profileHeaderView.frame = self.view.frame
       profileHeaderView.frame = CGRect(x: 0, y: 100, width: .max, height: 750)
    }

   
}
