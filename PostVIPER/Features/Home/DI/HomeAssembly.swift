import Foundation

class HomeAssembly {
    public func homeController () -> HomeViewController {
        let homeView = HomeViewController(nibName: NibName.homeViewController, bundle: nil)
        homeView.presenter = presenter(view: homeView)
        return homeView
    }

    private func presenter (view: HomeViewControllerProtocol) -> HomePresenterProtocol {
        let presenter = HomePresenter()
        presenter.interactor = interactor(presenter: presenter)
        presenter.view = view
        presenter.router = router(view: view)
        return presenter
    }

    private func router (view: HomeViewControllerProtocol) -> HomeRouterProtocol {
        let router = HomeRouter()
        router.view = view
        return router
    }

    private func interactor (presenter: HomeInteractorOutput) -> HomeInteractorInput {
        let interactor = HomeInteractor()
        interactor.getAllPostLoader = getAllPostLoader()
        interactor.presenter = presenter
        return interactor
    }
    
    func getAllPostLoader() -> GetAllPostLoader {
        let loader = RemoteGetAllPostLoader(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!, client: getClient())
        return loader
    }
    
    func getClient () -> HTTPClient {
        let client = URLSessionHTTPClient()
        return client
    }
    
    
}
