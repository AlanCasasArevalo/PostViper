import Foundation

class UpdatePostAssembly {
    public func updatePostViewController () -> UpdatePostViewController {
        let updatePostView = UpdatePostViewController(nibName: NibName.updatePostViewController, bundle: nil)
        return updatePostView
    }
}
