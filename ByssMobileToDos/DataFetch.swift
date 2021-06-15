import UIKit

class DataFetch: UIButton {

    static func initData() -> [Task] {
        let remoteTodos: [[String : Any]] = [["id": 1, "title": "delectus aut autem", "completed": 0],
                                             ["id": 2, "title": "quis ut nam facilis et officia qui", "completed": 0],
                                             ["id": 3, "title": "fugiat veniam minus", "completed": 1],
                                             ["id": 4, "title": "et porro tempora", "completed": 1],
                                             ["id": 5, "title": "laboriosam mollitia et enim quasi adipisci quia provident illum", "completed": 0],
                                             ["id": 6, "title": "qui ullam ratione quibusdam voluptatem quia omnis", "completed": 0],
                                             ["id": 7, "title": "illo expedita consequatur quia in", "completed": 0],
                                             ["id": 8, "title": "quo adipisci enim quam ut ab", "completed": 1],
                                             ["id": 9, "title": "molestiae perspiciatis ipsa", "completed": 0],
                                             ["id": 10, "title": "illo est ratione doloremque quia maiores aut", "completed": 1]]
        var tasks: [Task] = []
        remoteTodos.forEach {
            guard let id = $0["id"] as? Int,
                  let title = $0["title"] as? String,
                  let completed = $0["completed"] as? NSNumber else { return }
            tasks.append(Task(id: id, title: title, completed: Bool(truncating: completed)))
        }
        return tasks
    }

}
