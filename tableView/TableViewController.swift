//
//  TableViewController.swift
//  tableView
//
//  Created by 903-05i on 02.02.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    //    var arrayNames = ["Edward", "Bambam", "Leo", "Koko", ]
    //    var arraySurname = ["Ms", "Ms", "Ms", "Mrs"]
    //    var arrayImage = ["photo1", "photo2", "photo3", "photo4"]
    
    var arrayPerson = [
        
        Person(name: "Edward", surname: "cat", imageName: "photo1"),
        Person(name: "Bambam", surname: "cat", imageName: "photo2"),
        Person(name: "Leo", surname: "cat", imageName: "photo3"),
        Person(name: "Koko", surname: "cat", imageName: "photo4")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    @IBAction func addPerson(_ sender: Any) {

        arrayPerson.append(Person(name: "new name", surname: "new surname", imageName: "photo5"))
        
        //        arrayPerson.name.append("new name")
//        arrayPerson.surname.append("new surname")
//        arrayPerson.append("avatar")
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPerson.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath)
        
        // Configure the cell...
        
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPerson[indexPath.row].name
        
        let labelSurmane = cell.viewWithTag(1001) as! UILabel
        labelSurmane.text = arrayPerson[indexPath.row].surname
        
        
        let imageView = cell.viewWithTag(1002)as! UIImageView
        imageView.image = UIImage(named:arrayPerson[indexPath.row].imageName)
        
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 191
    }
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        
            
            arrayPerson.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "sss") as! ViewController
        
        vc.person = arrayPerson[indexPath.row]
        
        navigationController?.show(vc, sender: nil)
    }
    
}


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


