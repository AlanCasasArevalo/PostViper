import UIKit

protocol HomeRouterProtocol: class {

}

class HomeRouter {
    weak var view: HomeViewControllerProtocol?
}

extension HomeRouter: HomeRouterProtocol {

}