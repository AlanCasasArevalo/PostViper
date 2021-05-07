import Foundation

public enum PostLoaderResult {
    case success([PostEntiy])
    case failure(Error)
}

public protocol GetAllPostLoader {
    func load(completion: @escaping (PostLoaderResult) -> Void)
}
