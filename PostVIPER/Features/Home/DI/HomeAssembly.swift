import Foundation

class HomeAssembly {
    public func homeController () -> HomeViewController {
        let homeView = HomeViewController(nibName: NibName.homeViewController, bundle: nil)
        return homeView
    }
}
