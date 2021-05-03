import Foundation

protocol HomeInteractorOutput: class {

}

protocol HomePresenterProtocol: class {

}

class HomePresenter {
    weak var view: HomeViewControllerProtocol?
    weak var router: HomeRouterProtocol?
    var interactor: HomeInteractorInput?
}

extension HomePresenter: HomePresenterProtocol {

}