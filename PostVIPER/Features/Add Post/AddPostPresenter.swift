import Foundation

protocol AddPostInteractorOutput: class {
    func postReceived(post: PostLoaderJustOneResult)
}

protocol AddPostPresenterProtocol: class {
    func postWithBody(body: [String: Any])
}

class AddPostPresenter {
    weak var view: AddPostViewControllerProtocol?
    weak var router: AddPostRouterProtocol?
    var interactor: AddPostInteractorInput?
}

extension AddPostPresenter: AddPostPresenterProtocol {
    func postWithBody(body: [String: Any]) {
        interactor?.postPostFromLoader(body: body)
    }
}

extension AddPostPresenter: AddPostInteractorOutput {
    func postReceived(post: PostLoaderJustOneResult) {        
        switch post {
        case .success(let post):
            DispatchQueue.main.async { [weak view] in
                view?.successResult(post: post)
            }
        case .failure(let error):
            DispatchQueue.main.async { [weak view] in
                view?.getFailure(error: error.localizedDescription)
            }
        }
    }
}
