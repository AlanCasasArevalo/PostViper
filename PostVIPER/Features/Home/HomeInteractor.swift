import Foundation

protocol HomeInteractorInput: class {

}

class HomeInteractor {
    weak var presenter: HomeInteractorOutput?
}

extension HomeInteractor: HomeInteractorInput {

}