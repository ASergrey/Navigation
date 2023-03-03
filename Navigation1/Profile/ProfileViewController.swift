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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profileHeaderView)

    }

    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        profileHeaderView.backgroundColor = .lightGray
        profileHeaderView.frame = self.view.frame
        profileHeaderView.frame = CGRect(x: 0, y: 100, width: witdht, height: 750)
        profileHeaderView.setupLayout()
    }

}
