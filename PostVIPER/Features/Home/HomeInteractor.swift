import Foundation

protocol HomeInteractorInput: class {
    func getAllPostsFromLoader()
}

class HomeInteractor {
    weak var presenter: HomeInteractorOutput?
    var getAllPostLoader: GetAllPostLoader?
}

extension HomeInteractor: HomeInteractorInput {
    func getAllPostsFromLoader() {
        getAllPostLoader?.load { [weak presenter] posts in
            presenter?.getAllPosts(posts: posts)
        }
    }
}
