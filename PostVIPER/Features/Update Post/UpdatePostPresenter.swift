import Foundation

protocol UpdatePostInteractorOutput: class {

}

class UpdatePostPresenter {
    weak var view: UpdatePostViewControllerProtocol?
    var interactor: UpdatePostInteractorInput?
}
