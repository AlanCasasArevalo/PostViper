import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    let sceneAssembly = SceneAssembly()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let initialVC = sceneAssembly.coreAssembly
        sceneAssembly.window.rootViewController = initialVC
        sceneAssembly.window.makeKeyAndVisible()
        sceneAssembly.window.windowScene = windowScene
    }
}
