//
//  DetailTableViewController.swift
//  Project_131415
//
//  Created by PrincePhoenix on 10.06.2021.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var country: Country!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = country.flag + " " + country.name

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 9
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)

        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Name: \(country.name)"
        case 1:
            cell.textLabel?.text = "Flag: \(country.flag)"
        case 2:
            cell.textLabel?.text = "Capital: \(country.capital)"
        case 3:
            cell.textLabel?.text = "Largest city: \(country.largestCity)"
        case 4:
            cell.textLabel?.text = "Currency: \(country.currency)"
        case 5:
            cell.textLabel?.text = "Date format: \(country.dateFormat)"
        case 6:
            cell.textLabel?.text = "Driving side: \(country.drivingSide)"
        case 7:
            cell.textLabel?.text = "Phone code: \(country.phoneCode)"
        case 8:
            cell.textLabel?.text = "Domain:  \(country.topLevelDomain)"

        default:
            return cell
        }
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

}
