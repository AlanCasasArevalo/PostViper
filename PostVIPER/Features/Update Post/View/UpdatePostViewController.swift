import UIKit

protocol UpdatePostViewControllerProtocol: class {

}

class UpdatePostViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextField!
    @IBOutlet weak var userIdTextField: UITextField!
    @IBOutlet weak var postIdTextField: UITextField!

    var presenter: UpdatePostPresenterProtocol?
    
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

extension UpdatePostViewController: UpdatePostViewControllerProtocol {
}
