import Foundation

protocol AddPostInteractorOutput: class {

}

class AddPostPresenter {
    weak var view: AddPostViewControllerProtocol?
    var interactor: AddPostInteractorInput?
}
