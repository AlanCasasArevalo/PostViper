import Foundation

class UpdatePostAssembly {

    public func updatePostViewController () -> UpdatePostViewController {
        let updatePostView = UpdatePostViewController(nibName: NibName.updatePostViewController, bundle: nil)
        updatePostView.presenter = presenter(view: updatePostView)
        return updatePostView
    }
    
    private func presenter (view: UpdatePostViewControllerProtocol) -> UpdatePostPresenterProtocol {
        let presenter = UpdatePostPresenter()
        presenter.interactor = interactor()
        presenter.view = view
        presenter.router = router(view: view)
        return presenter
    }

    private func router (view: UpdatePostViewControllerProtocol) -> UpdatePostRouterProtocol {
        let router = UpdatePostRouter()
        router.view = view
        return router
    }

    private func interactor () -> UpdatePostInteractorInput {
        let interactor = UpdatePostInteractor()
        return interactor
    }
}
