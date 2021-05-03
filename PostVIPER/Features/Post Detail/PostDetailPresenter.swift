import Foundation

protocol PostDetailInteractorOutput: class {

}

protocol PostDetailPresenterProtocol {

}

class PostDetailPresenter {
    weak var view: PostDetailViewControllerProtocol?
    weak var router: PostDetailRouterProtocol?
    var interactor: PostDetailInteractorInput?
}

extension PostDetailPresenter: PostDetailPresenterProtocol {

}