import Foundation

class HomeAssembly {
    
    weak var detailAssembly: PostDetailAssembly?
    
    init(detailAssembly: PostDetailAssembly) {
        self.detailAssembly = detailAssembly
    }
    
    public func homeController () -> HomeViewController {
        let homeView = HomeViewController(nibName: NibName.homeViewController, bundle: nil)
        homeView.presenter = presenter(view: homeView)
        return homeView
    }

    private func presenter (view: HomeViewController) -> HomePresenterProtocol {
        let presenter = HomePresenter()
        presenter.interactor = interactor(presenter: presenter)
        presenter.view = view
        presenter.router = router(view: view)
        return presenter
    }

    private func router (view: HomeViewController) -> HomeRouterProtocol {
        let router = HomeRouter(detailAssembly: self.detailAssembly ?? PostDetailAssembly())
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
        let loader = RemotePostLoader(url: BaseURLS.basePostURL, client: getClient())
        return loader
    }
    
    func getClient () -> HTTPClient {
        let client = URLSessionHTTPClient()
        return client
    }    
    
}
