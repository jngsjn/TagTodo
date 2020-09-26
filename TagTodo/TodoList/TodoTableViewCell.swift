//
//  TodoTableViewCell.swift
//  TagTodo
//
//  Created by JNGSJN on 2020/09/27.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var todoView: UIView!
    @IBOutlet weak var todoTitleLabel: UILabel!
    @IBOutlet weak var todoTagLabel: UILabel!
    @IBOutlet weak var todoPriorityView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.todoView.layer.cornerRadius = 6
        self.todoPriorityView.layer.cornerRadius = self.todoPriorityView.frame.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
