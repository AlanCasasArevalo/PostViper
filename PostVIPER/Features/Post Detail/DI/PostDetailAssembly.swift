import Foundation

class PostDetailAssembly {
    public func postDetailViewController (post: PostEntiy) -> PostDetailViewController {
        let postDetail = PostDetailViewController(nibName: NibName.postDetailViewController, bundle: nil)
        postDetail.presenter = presenter(view: postDetail, post: post)
        return postDetail
    }

    private func presenter (view: PostDetailViewControllerProtocol, post: PostEntiy) -> PostDetailPresenterProtocol {
        let presenter = PostDetailPresenter(post: post)
        presenter.interactor = interactor()
        presenter.view = view
        presenter.router = router(view: view)
        return presenter
    }

    private func router (view: PostDetailViewControllerProtocol) -> PostDetailRouterProtocol {
        let router = PostDetailRouter()
        router.view = view
        return router
    }

    private func interactor () -> PostDetailInteractorInput {
        let interactor = PostDetailInteractor()
        return interactor
    }
}
