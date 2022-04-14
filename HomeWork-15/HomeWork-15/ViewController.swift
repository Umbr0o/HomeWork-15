//
//  ViewController.swift
//  HomeWork-15
//
//  Created by Артем Томило on 13.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class SeconViewController: UIViewController {
    
    let secondButton = UIButton()
        
    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.backgroundColor = .gray
        
        view.addSubview(secondButton)
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            secondButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            secondButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        secondButton.frame.size = .init(width: 100, height: 50)
        secondButton.addTarget(self, action: #selector(goFirstVC(_:)), for: .primaryActionTriggered)
        secondButton.backgroundColor = .blue
        secondButton.setTitle("My second Button", for: .normal)
    }
    
    @objc func goFirstVC(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
