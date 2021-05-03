import Foundation

class UpdatePostAssembly {
    public func homeController () -> UpdatePostViewController {
        let updatePostView = UpdatePostViewController(nibName: NibName.updatePostViewController, bundle: nil)
        return updatePostView
    }
}
