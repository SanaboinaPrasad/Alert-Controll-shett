//
//  ViewController.swift
//  Alert
//
//  Created by Sriram Prasad on 28/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let alertsheetButton :UIButton = {
       let button  = UIButton(type: .system)
            button.backgroundColor = .red
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Knock Knock", for: .normal)
        button.addTarget(self, action: #selector(alertSheetShow), for: .touchUpInside)
        return button
    }()
    let alertbutton :UIButton = {
        let button  = UIButton(type: .system)
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Knock Knock", for: .normal)
        button.addTarget(self, action: #selector(alertShow), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

            view.addSubview(alertsheetButton)
            view.addSubview(alertbutton)
            addConstraints()
    }
    @objc func alertSheetShow(){
        
        let alert = UIAlertController(title: "Knock Knock", message: "Who is he", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "OK", style: .default) { (_) in
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    @objc func alertShow(){
        let alert = UIAlertController(title: "Alet", message: "See the Message", preferredStyle: .alert)
        let action = UIAlertAction(title: "alet showing", style: .default) { (_) in
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
    func addConstraints(){
    let constraints  = [
    
        alertsheetButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
        alertsheetButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 100),
        alertsheetButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -100),
        alertsheetButton.heightAnchor.constraint(equalToConstant: 100),
        
        alertbutton.topAnchor.constraint(equalTo: alertsheetButton.bottomAnchor,constant: 100),
        alertbutton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 100),
        alertbutton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -100),
        alertbutton.heightAnchor.constraint(equalToConstant: 100),

        
    ]
        NSLayoutConstraint.activate(constraints)
    }
}

