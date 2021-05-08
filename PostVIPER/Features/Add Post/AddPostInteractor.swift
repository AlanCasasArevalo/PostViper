import Foundation

protocol AddPostInteractorInput: class {
    func postPostFromLoader(body: [String: Any])
}

class AddPostInteractor {
    weak var presenter: AddPostInteractorOutput?
    var postLoader: PostPostLoader?
}

extension AddPostInteractor: AddPostInteractorInput {
    func postPostFromLoader(body: [String: Any]) {
        postLoader?.post(body: body) { [weak presenter] post in
            presenter?.postReceived(post: post)
        }
    }
}
