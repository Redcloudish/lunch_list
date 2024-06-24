import UIKit

protocol ItemDetailViewControllerDelegate: AnyObject {
    func itemDetailViewControllerDidCancel(_ controller: ItemDetailViewController)
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishAdding item: ChecklistItem)
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishEditing item: ChecklistItem)
}

class ItemDetailViewController: UITableViewController {
    weak var delegate: ItemDetailViewControllerDelegate?

    var itemToEdit: ChecklistItem?

    @IBAction func cancel() {
        delegate?.itemDetailViewControllerDidCancel(self)
    }

    @IBAction func done() {
        if let item = itemToEdit {
            // Update the existing item
            item.text = "Some Updated Text" // Replace with actual data handling
            delegate?.itemDetailViewController(self, didFinishEditing: item)
        } else {
            // Create a new item
            let item = ChecklistItem()
            item.text = "New Item Text" // Replace with actual data handling
            delegate?.itemDetailViewController(self, didFinishAdding: item)
        }
    }
}
