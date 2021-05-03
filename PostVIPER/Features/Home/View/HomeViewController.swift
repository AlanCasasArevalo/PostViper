import UIKit

protocol HomeViewControllerProtocol: class {

}

class HomeViewController: UIViewController {

    @IBOutlet weak var postTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegatesAndDataSource()
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        return cell
    }
 
}
