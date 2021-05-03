import Foundation

protocol PostDetailInteractorOutput: class {

}

class PostDetailPresenter {
    weak var view: PostDetailViewControllerProtocol?
    var interactor: PostDetailInteractorInput?
}
