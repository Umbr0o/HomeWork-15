//
//  ViewController.swift
//  HomeWork-15
//
//  Created by Артем Томило on 13.04.22.
//

import UIKit

class ViewController: UIViewController {
    
        let firstTextField = UITextField()
        let secondTextField = UITextField()
        let firstButton = UIButton()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            view.addSubview(firstTextField)
            view.addSubview(secondTextField)
            view.addSubview(firstButton)
            
            firstTextField.translatesAutoresizingMaskIntoConstraints = false
            secondTextField.translatesAutoresizingMaskIntoConstraints = false
            firstButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                firstTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
                firstTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
                firstTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
                secondTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
                secondTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
                secondTextField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 100),
                firstButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
                firstButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
                firstButton.topAnchor.constraint(equalTo: secondTextField.bottomAnchor, constant: 100),
            ])
            firstButton.frame.size = .init(width: 100, height: 50)
            firstButton.backgroundColor = .cyan
            firstButton.setTitle("My Button", for: .normal)
            firstButton.setTitleColor(.black, for: .normal)
            
            firstTextField.borderStyle = .roundedRect
            secondTextField.borderStyle = .roundedRect
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(screenTapped(_:)))
            view.addGestureRecognizer(tapGesture)
        }
    
    @objc
    func screenTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(false)
    }

}
