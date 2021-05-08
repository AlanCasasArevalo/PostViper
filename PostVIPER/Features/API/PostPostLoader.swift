import Foundation

public enum PostLoaderJustOneResult {
    case success(PostEntiy)
    case failure(Error)
}

public protocol PostPostLoader {
    func post(body: [String: Any], completion: @escaping (PostLoaderJustOneResult) -> Void)
}
