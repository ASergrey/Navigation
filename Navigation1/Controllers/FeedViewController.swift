

import UIKit

class FeedViewController: UIViewController {

    var post = Post(title: "Типа пост")

    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .systemGray
        stack.alignment = .center
        stack.distribution = .fillEqually
        return stack
    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 13
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 13
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupStack()
    }

//    private func setupButton() {
//            self.view.addSubview(self.button)
//            self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
//            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
//            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
//            self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        }

    private func setupStack(){
        view.addSubview(stack)

        stack.addArrangedSubview(button)
        stack.addArrangedSubview(secondButton)

        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            stack.heightAnchor.constraint(equalToConstant: 200),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)

        ])
    }
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        postViewController.titlePost = post.title
    }


}

