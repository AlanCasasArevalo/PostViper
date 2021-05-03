import Foundation

protocol PostDetailInteractorInput: class {

}

protocol PostDetailInteractorProtocol: class {

}

class PostDetailInteractor {
    weak var presenter: PostDetailInteractorOutput?
}

extension PostDetailInteractor: PostDetailInteractorInput {

}

extension PostDetailInteractor: PostDetailInteractorProtocol {

}