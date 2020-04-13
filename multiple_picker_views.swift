

import UIKit

class ViewController: UIViewController {
    
    // Data to display in pickerView1
    private let dataSource1 = ["Bai", "Lucas", "Lia", "Jorge", "Alvarito"]
    
    // Data to display in pickerView2
    private let dataSource2 = ["Perrp", "Gato", "Leon", "Vaca", "Tigre"]
    
    // This will be the value picked from pickerView1
    var valueFromPicker1 = ""
    // This will be the value picked from pickerView2
    var valueFromPicker2 = ""


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PickerView stuff
        pickerView1.dataSource = self
        pickerView1.delegate = self
        pickerView2.dataSource = self
        pickerView2.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Referenced label to visualize the value picked from the pickerView1
    @IBOutlet weak var titleFromPickerView1: UILabel!

    // Reference of the first pickerView
    @IBOutlet weak var pickerView1: UIPickerView!
    
    // Reference of the second pickerView
    @IBOutlet weak var pickerView2: UIPickerView!
}


// Extension to add the pickerView functions. All the functions come out automatically
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    // Number of columns of each pickerView
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        if pickerView == pickerView1{
            return 1        }
        else if pickerView == pickerView2{
            return 1
        }
        return 1
        
    }
    
    // Number of rows for each picker view
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == pickerView1{
            return dataSource1.count
        }
        else if pickerView == pickerView2{
            return dataSource2.count
        }
        return 1
    }
    
    // What to do with the value selected from the pickerView. Here pickerView1: assined to valueFromPicker1 and to label to visualize
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1{
            valueFromPicker1 = dataSource1[row]
            titleFromPickerView1.text = dataSource1[row]        }
        else if pickerView == pickerView2{
            valueFromPicker2 = dataSource2[row]
            print(valueFromPicker2)
        }
        
    }
    
    // What to see in each row of each pickerView
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickerView1{
            return dataSource1[row]
        }
        else if pickerView == pickerView2{
            return dataSource2[row]
        }
        return ""
        
    }
    
    
}
