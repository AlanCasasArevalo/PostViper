import Foundation

protocol AddPostInteractorInput: class {

}

class AddPostInteractor {
    weak var presenter: AddPostInteractorOutput?
}

extension AddPostInteractor: AddPostInteractorInput {

}