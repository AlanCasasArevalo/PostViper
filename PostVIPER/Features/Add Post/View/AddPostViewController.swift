import UIKit

protocol AddPostViewControllerProtocol: class {
    func successResult(post: PostEntiy)
    func getFailure(error: String)
}

class AddPostViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextField!
    @IBOutlet weak var userIdTextField: UITextField!
    
    @IBOutlet weak var savePostButton: UIButton!
    
    var presenter: AddPostPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDelegates()
    }

    @IBAction func savePostButtonTouched(_ sender: UIButton) {
        var title = titleTextField.text
        var bodyText = bodyTextField.text
        var userId = userIdTextField.text
        
        let body = [
            "title": title,
            "body": bodyText,
            "userId": userId
        ]
        
        presenter?.postWithBody(body: body)
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
    func successResult(post: PostEntiy) {
        let alert = UIAlertController(title:  post.title, message: post.body, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { [weak titleTextField, bodyTextField, userIdTextField] action in
            titleTextField?.text = ""
            bodyTextField?.text = ""
            userIdTextField?.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }

    func getFailure(error: String) {
        let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}
