//
//  TodoList.swift
//  TagTodo
//
//  Created by JNGSJN on 2020/09/27.
//

import RealmSwift

struct RealmTodoList {
    
    init() throws {
        self.realm = try Realm.init()
        print("Realm:",Realm.Configuration.defaultConfiguration.fileURL ?? "")
    }
    
    fileprivate let realm: Realm
    
    func add(todo: Todo) throws {
        try self.realm.write {
            self.realm.add(todo)
        }
    }
    
    func getAll(priority:Priority? = nil) -> [Todo] {
        let results: Results<Todo>
        
        if let selectedPriority = priority {
            results = self.realm.objects(Todo.self).filter("priority == \(selectedPriority.rawValue)")
        } else {
            results = self.realm.objects(Todo.self)
        }
        
        guard !results.isEmpty else{
            return []
        }
        
        return Array.init(results)
    }
}
