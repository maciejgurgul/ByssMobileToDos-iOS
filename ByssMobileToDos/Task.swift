import UIKit

class Task {

    let id: Int
    let title: String
    var completed: Bool

    init(id: Int, title: String, completed: Bool) {
        self.id = id
        self.title = title
        self.completed = completed
    }
}
