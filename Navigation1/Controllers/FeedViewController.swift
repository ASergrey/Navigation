

import UIKit

class FeedViewController: UIViewController {

    var post = Post(title: "Типа пост")


    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.layer.cornerRadius = 13
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
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


    @objc private func buttonAction() {
           let postViewController = PostViewController()
           self.navigationController?.pushViewController(postViewController, animated: true)
        postViewController.titlePost = post.title
       }


}

