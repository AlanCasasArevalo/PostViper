import Foundation

protocol HomeInteractorOutput: class {
    func getAllPosts(posts: PostLoaderResult)
}

protocol HomePresenterProtocol: class {
    var posts: [PostEntiy]? { get }
    func viewDidLoad ()
}

class HomePresenter : HomePresenterProtocol {
    weak var view: HomeViewControllerProtocol?
    weak var router: HomeRouterProtocol?
    var interactor: HomeInteractorInput?
    var posts: [PostEntiy]?

    func viewDidLoad () {
        interactor?.getAllPostsFromLoader()
    }
}

extension HomePresenter: HomeInteractorOutput {
    func getAllPosts(posts: PostLoaderResult) {
        switch posts {
        case .success(let postsSuccess):
            self.posts = postsSuccess
            DispatchQueue.main.async { [weak view] in
                view?.getAllPosts(posts: posts)
            }
        case .failure(let error):
            DispatchQueue.main.async { [weak view] in
                view?.getFailure(error: error.localizedDescription)
            }
        }
    }
}
