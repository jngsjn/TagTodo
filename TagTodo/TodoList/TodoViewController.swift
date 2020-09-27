//
//  TodoViewController.swift
//  TagTodo
//
//  Created by JNGSJN on 2020/09/27.
//

import UIKit

class TodoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todoListObjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = self.todoListObjects[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TodoTableViewCell
        
        cell.todoTitleLabel.text = todo.title
        cell.todoTagLabel.text = todo.tag
        cell.todoPriorityView.backgroundColor = Priority.init(rawValue: todo.priority)?.color()
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    var todoList: RealmTodoList?
    var todoListObjects: [Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍\(#function)")
        self.tableView.dataSource = self
        self.tableView.delegate = self

        do {
            self.todoList = try RealmTodoList.init()
            self.tableView.dataSource = self
        } catch let e {
            print("😭", e)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("👍\(#function)")
        self.todoListObjects = self.todoList?.getAll() ?? []
        self.tableView.reloadData()
    }

    @IBAction func priorityFilter_selected(_ sender: UISegmentedControl) {
        print("👍\(#function)")
    }

}
