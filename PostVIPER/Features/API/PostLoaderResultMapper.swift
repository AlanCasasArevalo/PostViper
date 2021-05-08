import Foundation

internal class PostLoaderResultMapper {
    internal static func map (_ data: Data, from response: HTTPURLResponse) -> RemotePostLoader.Result {
        guard response.statusCode == 200, let rootElemets = try? JSONDecoder().decode([PostEntiy].self, from: data) else { return .failure(RemotePostLoader.Error.invalidData) }
        
        return.success(rootElemets)
    }
    
    internal static func mapJustOneEntity (_ data: Data, from response: HTTPURLResponse) -> RemotePostLoader.ResultJustOne {
        guard response.statusCode == 201, let rootElemets = try? JSONDecoder().decode(PostEntiy.self, from: data) else { return .failure(RemotePostLoader.Error.invalidData) }
        
        return.success(rootElemets)
    }

}
