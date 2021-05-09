import UIKit

protocol HomeRouterProtocol: class {
    func navigateToDetail(post: PostEntiy)
}

class HomeRouter {
    weak var view: HomeViewPresentation?
    
    weak var detailAssembly: PostDetailAssembly?
    
    init(detailAssembly: PostDetailAssembly) {
        self.detailAssembly = detailAssembly
    }
    
}

extension HomeRouter: HomeRouterProtocol {
    func navigateToDetail(post: PostEntiy) {
        guard let postDetail = self.detailAssembly?.postDetailViewController(post: post) else { return }
        DispatchQueue.main.async { [weak view] in
            view?.navigationToDetail(viewControllerToNavigation: postDetail)
        }
    }
}
