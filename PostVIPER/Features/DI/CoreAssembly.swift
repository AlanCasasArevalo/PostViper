import UIKit

final public class CoreAssembly {

    private(set) lazy var addPostAssembly = AddPostAssembly()
    private(set) lazy var postDetailAssembly = PostDetailAssembly()
    private(set) lazy var homeAssembly = HomeAssembly(detailAssembly: postDetailAssembly)

    private(set) lazy var homeTabBar = HomeTabAssembly(homeAssembly: homeAssembly, addPostAssembly: addPostAssembly)

    private let navigationController: UINavigationController?

    public init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
}
