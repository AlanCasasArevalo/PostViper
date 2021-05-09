import Foundation

protocol HomeInteractorOutput: class {
    func getAllPosts(posts: PostLoaderResult)
}

protocol HomePresenterProtocol: class {
    var posts: [PostEntiy]? { get }
    func viewDidLoad ()
    func navigateToDetail(post: PostEntiy)
}

class HomePresenter : HomePresenterProtocol {
    weak var view: HomeViewControllerProtocol?
    var router: HomeRouterProtocol?
    var interactor: HomeInteractorInput?
    var posts: [PostEntiy]?

    func viewDidLoad () {
        interactor?.getAllPostsFromLoader()
    }
}

extension HomePresenter {
    func navigateToDetail(post: PostEntiy) {
        router?.navigateToDetail(post: post)
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
