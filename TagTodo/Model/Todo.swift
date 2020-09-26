//
//  Todo.swift
//  TagTodo
//
//  Created by JNGSJN on 2020/09/27.
//

import RealmSwift

class Todo: Object {
    @objc dynamic var title: String?
    @objc dynamic var tag: String?
    @objc dynamic var priority: Int = 0
}





