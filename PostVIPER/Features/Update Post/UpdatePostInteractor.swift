import Foundation

protocol UpdatePostInteractorInput: class {

}

class UpdatePostInteractor {
    weak var presenter: UpdatePostInteractorOutput?
}

extension UpdatePostInteractor: UpdatePostInteractorInput {

}