import Foundation

// MARK: - PostEntiyElement
public struct PostEntiy: Codable {
    let userID, id: Int?
    let title, body: String?

    enum CodingKeys: String, CodingKey {
        case userID
        case id, title, body
    }
    
    public init (userID: Int?, id: Int?, title: String?, body: String?) {
        (self.userID, self.id, self.title, self.body) = (userID, id, title, body)
    }
}
