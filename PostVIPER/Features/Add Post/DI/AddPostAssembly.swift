import Foundation

class AddPostAssembly {
    public func addController () -> AddPostViewController {
        let addView = AddPostViewController(nibName: NibName.addPostViewController, bundle: nil)
        addView.presenter = presenter(view: addView)
        return addView
    }

    private func presenter (view: AddPostViewControllerProtocol) -> AddPostPresenterProtocol {
        let presenter = AddPostPresenter()
        presenter.interactor = interactor()
        presenter.view = view
        presenter.router = router(view: view)
        return presenter
    }

    private func router (view: AddPostViewControllerProtocol) -> AddPostRouterProtocol {
        let router = AddPostRouter()
        router.view = view
        return router
    }

    private func interactor () -> AddPostInteractorInput {
        let interactor = AddPostInteractor()
        return interactor
    }
}
