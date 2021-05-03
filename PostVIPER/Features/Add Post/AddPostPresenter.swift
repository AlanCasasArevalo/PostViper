import Foundation

protocol AddPostInteractorOutput: class {

}
protocol AddPostPresenterProtocol: class {

}

class AddPostPresenter {
    weak var view: AddPostViewControllerProtocol?
    weak var router: AddPostRouterProtocol?
    var interactor: AddPostInteractorInput?
}

extension AddPostPresenter: AddPostPresenterProtocol {

}

extension AddPostPresenter: AddPostInteractorOutput {

}