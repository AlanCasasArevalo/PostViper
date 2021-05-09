import UIKit

protocol PostDetailViewControllerProtocol: class {

}

class PostDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var postIdLabel: UILabel!

    var presenter: PostDetailPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI () {
        titleLabel.text = presenter?.post.title
        bodyLabel.text = presenter?.post.body
        postIdLabel.text = "\(presenter?.post.id ?? 0)"
    }

}

extension PostDetailViewController: PostDetailViewControllerProtocol {

}
