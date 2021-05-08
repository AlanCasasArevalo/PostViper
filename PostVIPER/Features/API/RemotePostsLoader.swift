import Foundation

typealias CompletionResult = (HTTPClientResult) -> Void

public final class RemotePostLoader: GetAllPostLoader {    

    private let client: HTTPClient
    private let url: URL?
    private let urlRequest: URLRequest?

    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }

    public typealias Result = PostLoaderResult
    public typealias ResultJustOne = PostLoaderJustOneResult

    public init(url: URL? = nil, client: HTTPClient, urlRequest: URLRequest? = nil) {
        self.url = url
        self.client = client
        self.urlRequest = urlRequest
    }

    public func load(completion: @escaping (Result) -> Void) {
        guard let urlDes = url else { return }
        client.getUrl(from: urlDes) { [weak self] result in
            guard self != nil else { return }
            switch result {
            case let .success(data, response):
                completion(PostLoaderResultMapper.map(data, from: response))
            case .failure:
                completion(.failure(Error.connectivity))
            }
        }
    }

}

extension RemotePostLoader: PostPostLoader {
    public func post(body: [String : Any], completion: @escaping (PostLoaderJustOneResult) -> Void) {
        guard var urlRequestDes = urlRequest else { return }
        urlRequestDes.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        
        client.postUrl(from: urlRequestDes) {[weak self] result in
            guard self != nil else { return }
            switch result {
            case let .success(data, response):
                completion(PostLoaderResultMapper.mapJustOneEntity(data, from: response))
            break
            case .failure:
                completion(.failure(Error.connectivity))
            }

        }
    }
}
