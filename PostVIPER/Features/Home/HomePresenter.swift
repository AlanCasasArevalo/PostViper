import Foundation

protocol HomeInteractorOutput: class {

}

class HomePresenter {
    weak var view: HomeViewControllerProtocol?
    var interactor: HomeInteractorInput?
}
