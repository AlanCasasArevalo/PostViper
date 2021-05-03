import Foundation

class PostDetailAssembly {
    public func postDetailViewController () -> PostDetailViewController {
        let postDetail = PostDetailViewController(nibName: NibName.postDetailViewController, bundle: nil)
        return postDetail
    }
}
