//
//  UpdatePostViewController.swift
//  PostVIPER
//
//  Created by Alan Casas on 03/05/2021.
//

import UIKit

class UpdatePostViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextField!
    @IBOutlet weak var userIdTextField: UITextField!
    @IBOutlet weak var postIdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDelegates()
    }

}

extension UpdatePostViewController: UITextFieldDelegate {
    func setupDelegates () {
        titleTextField.delegate = self
        bodyTextField.delegate = self
        userIdTextField.delegate = self
        postIdTextField.delegate = self
    }
}
