import UIKit

protocol HomeViewControllerProtocol: class {
    func getAllPosts(posts: PostLoaderResult)
    func getFailure(error: String)
}

class HomeViewController: UIViewController {

    @IBOutlet weak var postTableView: UITableView!

    var presenter: HomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegatesAndDataSource()
        presenter?.viewDidLoad()
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupDelegatesAndDataSource () {
        postTableView.delegate = self
        postTableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let posts = presenter?.posts else { return 0 }
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let posts = presenter?.posts else { return UITableViewCell(style: .default, reuseIdentifier: "Cell") }
        
        let post = posts[indexPath.row]

        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = post.title
        cell.detailTextLabel?.text = post.body
        
        return cell
    }
 
}

extension HomeViewController: HomeViewControllerProtocol {
    func getAllPosts(posts: PostLoaderResult) {
        self.postTableView.reloadData()
    }

    func getFailure(error: String) {
        let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)        
        alert.addAction(action)
        present(alert, animated: true)
    }

}
