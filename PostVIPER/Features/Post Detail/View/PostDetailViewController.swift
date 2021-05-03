import UIKit

protocol PostDetailViewControllerProtocol: class {

}

class PostDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var postIdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension PostDetailViewController: PostDetailViewControllerProtocol {

}