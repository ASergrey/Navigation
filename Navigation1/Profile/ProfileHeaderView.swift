//
//  ProfileHeaderView.swift
//  Navigation1
//
//  Created by  Sergey Aydarov on 16.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    private var photoView = UIImageView(frame: CGRect(x: 16, y: 16, width: 100, height: 100))
    var simbaImage = UIImage(named: "Simba")
    var label = UILabel(frame: CGRect(x: 150, y: 27, width: 100, height: 40))
    var statusLabel = UILabel(frame: CGRect(x: 130, y:75 , width: 200, height: 40))
    var mybutton = UIButton(frame: CGRect(x: 16, y: 154, width: 362, height: 50))
     var textField = UITextField(frame: CGRect(x: 130, y: 110, width: 240, height: 40))
    var status : String = "Waiting for something..."


    func setupViews() {
        setupPhoto()
        setupLabel()
        setupStatus()
        setupButton()
        setupTextfield()
    }

    func setupPhoto(){
        addSubview(photoView)
        photoView.image = UIImage(named: "Simba")
        photoView.layer.cornerRadius = 50
        photoView.layer.borderWidth = 3
        photoView.layer.borderColor = UIColor.white.cgColor
    }

    func setupLabel(){
        addSubview(label)
        label.text = "Hipster Cat"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
    }

    func setupStatus() {
        addSubview(statusLabel)
        statusLabel.text = status
        statusLabel.textColor = .gray
        statusLabel.font  = UIFont(name: "regular", size: 14)
    }

    func setupButton() {
        addSubview(mybutton)
        mybutton.backgroundColor = .blue
        mybutton.layer.cornerRadius = 4
        mybutton.setTitle("Show status", for: .normal)
        mybutton.layer.shadowOffset = CGSize(width: 4, height: 4)
        mybutton.layer.shadowColor = UIColor.black.cgColor
        mybutton.layer.shadowOpacity = 0.7
        mybutton.layer.shadowRadius = 4
        mybutton.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
    }

    func setupTextfield () {

        addSubview(textField)
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 12
        textField.placeholder = "Write your status"
        textField.addTarget(self, action: #selector(textFieldAction), for: .editingChanged)
    }



    @objc private func textFieldAction ( ) {
        if textField.text != nil {
            status = textField.text!}
        else {
            status = "111111"
        }
        print("texfield")
        }

    @objc  func tapAction() {
        if textField.text != nil {
            status = textField.text!}
        else {
            status = "2222222"
        }
        print("tap")
    }
    }

