

import UIKit

class ViewController_02: UIViewController {

    // The reference of the table from the storyboard
    @IBOutlet weak var tableview: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // referencing the specific storyboard
        tableview.delegate = self
        tableview.dataSource = self


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // the names to display inside the cells
    let namesArray = ["isma", "blanca", "bai"]


}

extension ViewController_02: UITableViewDataSource, UITableViewDelegate{
    
    //number of cells
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    // defining the cell. In this case relates to a class I created names ISCell and also the object with that name
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ISCell") as! ISCell
        
        // Get the name to display in each cell
        let nameInCell = namesArray[indexPath.row]
        
        // A function inside the class ISCell to insert the name in the label
        cell.defaultLabel(nameInCell)
        
        return cell
}
    
    // This function returns the index of the row you are selecting when clicking on it. It can be used to create a button from the cell for example by running perform segue with identifier
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        
        //performSegueWithIdentifier("nameOfTheSegue", sender: self)
    }
    
    
    
}
