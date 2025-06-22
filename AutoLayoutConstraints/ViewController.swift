//
//  ViewController.swift
//  AutoLayoutConstraints
//
//  Created by Ruslan Khusainov on 21.06.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCenterYConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonPushed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        let leftConstraint = button.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        leftConstraint.isActive = true
        let rightConstraint = button.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        rightConstraint.isActive = true
        let bottomConstraint = button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        bottomConstraint.isActive = true
        
    }

    @objc func buttonPushed(_ button: UIButton) {
        if labelCenterYConstraint.isActive {
            labelCenterYConstraint.isActive = false
            labelTopConstraint.isActive = true
        } else {
            labelCenterYConstraint.isActive = true
            labelTopConstraint.isActive = false
        }
        
    }

}

