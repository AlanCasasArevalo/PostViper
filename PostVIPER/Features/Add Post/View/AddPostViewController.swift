import UIKit

protocol AddPostViewControllerProtocol: class {

}

class AddPostViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextField!
    @IBOutlet weak var userIdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDelegates()
    }

}

extension AddPostViewController: UITextFieldDelegate {
    func setupDelegates () {
        titleTextField.delegate = self
        bodyTextField.delegate = self
        userIdTextField.delegate = self
    }
}

extension AddPostViewController: AddPostViewControllerProtocol {

}
