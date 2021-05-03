import UIKit

class HomeTabAssembly {

    let homeAssembly: HomeAssembly
    let addPostAssembly: AddPostAssembly
    let updatePostAssembly: UpdatePostAssembly

    init(homeAssembly: HomeAssembly, addPostAssembly: AddPostAssembly, updatePostAssembly: UpdatePostAssembly) {
        self.homeAssembly = homeAssembly
        self.addPostAssembly = addPostAssembly
        self.updatePostAssembly = updatePostAssembly
    }

    public func homeTabbarController () -> HomeTabViewController {
        let tabViewController = HomeTabViewController(nibName: NibName.tabViewController, bundle: nil)

        let homeView = homeAssembly.homeController()
        let addPost = addPostAssembly.addController()
        let updatePostView = updatePostAssembly.updatePostViewController()

        let homeTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.homeTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.homeTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.homeTabbarItemImageName))
        let addPostTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.addPostTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.addPostTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.addPostTabbarItemImageName))
        let updatePostTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.updatePostTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.updatePostTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.updatePostTabbarItemImageName))

        homeView.tabBarItem = homeTabbarItem
        addPost.tabBarItem = addPostTabbarItem
        updatePostView.tabBarItem = updatePostTabbarItem

        tabViewController.viewControllers = [homeView, addPost, updatePostView]

        return tabViewController
    }
    
}
