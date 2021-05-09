import Foundation

protocol PostDetailInteractorOutput: class {

}

protocol PostDetailPresenterProtocol {
    var post: PostEntiy { get }
}

class PostDetailPresenter : PostDetailPresenterProtocol {
    weak var view: PostDetailViewControllerProtocol?
    weak var router: PostDetailRouterProtocol?
    var interactor: PostDetailInteractorInput?
    
    var post: PostEntiy
    
    init(post: PostEntiy) {
        self.post = post
    }
}

