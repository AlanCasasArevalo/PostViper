import UIKit

protocol PostDetailRouterProtocol: class {

}

class PostDetailRouter {
    weak var view: PostDetailViewControllerProtocol?
}

extension PostDetailRouter: PostDetailRouterProtocol {

}