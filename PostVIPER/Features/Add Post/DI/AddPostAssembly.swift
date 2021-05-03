import Foundation

class AddPostAssembly {
    public func addController () -> AddPostViewController {
        let addView = AddPostViewController(nibName: NibName.addPostViewController, bundle: nil)
        return addView
    }
}
