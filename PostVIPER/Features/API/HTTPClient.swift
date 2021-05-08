import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func getUrl(from url: URL, completion: @escaping  (HTTPClientResult) -> Void)
    func postUrl(from urlRequest: URLRequest, completion: @escaping (HTTPClientResult) -> Void)
}
