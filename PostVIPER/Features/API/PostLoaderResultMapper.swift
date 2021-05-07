import Foundation

internal class PostLoaderResultMapper {
    internal static func map (_ data: Data, from response: HTTPURLResponse) -> RemoteGetAllPostLoader.Result {
        guard response.statusCode == 200, let rootElemets = try? JSONDecoder().decode([PostEntiy].self, from: data) else { return .failure(RemoteGetAllPostLoader.Error.invalidData) }
        
        return.success(rootElemets)
    }
}
