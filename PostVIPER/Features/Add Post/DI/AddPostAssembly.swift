import Foundation

class AddPostAssembly {
    public func addController () -> AddPostViewController {
        let addView = AddPostViewController(nibName: NibName.addPostViewController, bundle: nil)
        addView.presenter = presenter(view: addView)
        return addView
    }

    private func presenter (view: AddPostViewControllerProtocol) -> AddPostPresenterProtocol {
        let presenter = AddPostPresenter()
        presenter.interactor = interactor(presenter: presenter)
        presenter.view = view
        presenter.router = router(view: view)
        return presenter
    }

    private func router (view: AddPostViewControllerProtocol) -> AddPostRouterProtocol {
        let router = AddPostRouter()
        router.view = view
        return router
    }

    private func interactor (presenter: AddPostInteractorOutput) -> AddPostInteractorInput {
        let interactor = AddPostInteractor()
        interactor.presenter = presenter
        interactor.postLoader = postPost()
        return interactor
    }
    
    private func postPost () -> PostPostLoader {
        let loader = RemotePostLoader(client: getClient(), urlRequest: getURLRequest())
        return loader
    }
    
    func getURLRequest() -> URLRequest {
        var request = URLRequest(url: BaseURLS.basePostURL)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
    
    private func getClient () -> HTTPClient {
        let client = URLSessionHTTPClient()
        return client
    }
}
