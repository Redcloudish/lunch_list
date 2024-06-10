//
//  ViewController.swift
//  work_checklist
//
//  Created by mike brown on 2024-06-09.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 5
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem",
            for: indexPath)
        // Add the following code
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Strawberry Splash"
        } else if indexPath.row == 1 {
            label.text = "Chilly Soup"
        } else if indexPath.row == 2 {
            label.text = "Iced Coffee"
        } else if indexPath.row == 3 {
            label.text = "Flatbread Pizza"
        } else if indexPath.row == 4 {
            label.text = "Vanilla Latte"
        }
        // End of new code block
        
        return cell
    }
    // MARK: - Table View Delegate
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


