//
//  TaskTableViewCell.swift
//  ToDoApp
//
//  Created by Peek A Boo on 2024-09-28.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet var UserTitle: UILabel!
    @IBOutlet var UserDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
