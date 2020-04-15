
import UIKit

class ISCell: UITableViewCell {

    // Point to the label UI inside the cell
    @IBOutlet weak var labelCell: UITextField!

    // Point to a button inside the cell
    @IBAction func buttonCell(sender: AnyObject) {
        
        // if click the button add "topota" to whatever is in the label
        let textInLabel = labelCell.text
        
        labelCell.text = textInLabel! + "topota"
    }
    
    // Function to load a label text by default
    func defaultLabel (textIn: String) {
        labelCell.text = textIn
    }
}
