import Foundation

protocol UpdatePostInteractorOutput: class {

}

protocol UpdatePostPresenterProtocol: class {

}

class UpdatePostPresenter {
    weak var view: UpdatePostViewControllerProtocol?
    weak var router: UpdatePostRouterProtocol?
    var interactor: UpdatePostInteractorInput?
}

extension UpdatePostPresenter: UpdatePostInteractorOutput {

}

extension UpdatePostPresenter: UpdatePostPresenterProtocol {

}

