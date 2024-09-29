//
//  ViewController.swift
//  ToDoApp
//
//  Created by Peek A Boo on 2024-09-28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var TitleField: UITextField!
    @IBOutlet var DescriptionField: UITextField!
    @IBOutlet var TableViewCell: UITableView!
    
    var toDoItems:[ToDoItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewCell.dataSource = self
        TableViewCell.delegate = self
    }

    @IBAction func AddButtonTapped(_ sender: UIButton) {
        if let title = TitleField.text, !title.isEmpty,
                   let description = DescriptionField.text, !description.isEmpty {
                    
                    let todoItem = ToDoItem(title: title, description: description)
                    
                    toDoItems.append(todoItem)
                    
                    // Clear the text fields
                    TitleField.text = ""
                    DescriptionField.text = ""
                                
                    // Reload the table view
            TableViewCell.reloadData()
        }
        
    }
    
    //model to store to do items
    struct ToDoItem{
        var title: String
        var description: String
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath) as! TaskTableViewCell
                
                // Get the item at the current index
                let item = toDoItems[indexPath.row]
                
                // Set the title and description in the custom labels
        cell.UserTitle.text = item.title
        cell.UserDescription.text = item.description
                
                return cell
        
    }
    

}

