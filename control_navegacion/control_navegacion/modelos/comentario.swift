import Foundation

struct Comentario: Identifiable, Codable{
    let postId: Int
    let id: Int
    var texto: String
    let name: String
    let email: String
    let body: String
}
