import UIKit

class HomeTabAssembly {

    let homeAssembly: HomeAssembly
    let addPostAssembly: AddPostAssembly

    init(homeAssembly: HomeAssembly, addPostAssembly: AddPostAssembly) {
        self.homeAssembly = homeAssembly
        self.addPostAssembly = addPostAssembly
    }

    public func homeTabbarController () -> HomeTabViewController {
        let tabViewController = HomeTabViewController(nibName: NibName.tabViewController, bundle: nil)

        let homeView = homeAssembly.homeController()
        let addPost = addPostAssembly.addController()

        let homeTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.homeTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.homeTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.homeTabbarItemImageName))
        let addPostTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.addPostTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.addPostTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.addPostTabbarItemImageName))

        homeView.tabBarItem = homeTabbarItem
        addPost.tabBarItem = addPostTabbarItem

        tabViewController.viewControllers = [homeView, addPost]

        return tabViewController
    }
    
}
