//
//  ViewController.swift
//  Project_131415
//
//  Created by PrincePhoenix on 10.06.2021.
//

import UIKit

class ViewController: UITableViewController {

    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        parseJSON()
    }

        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row].flag + countries[indexPath.row].name
        return cell
    }
    
    func parseJSON() {
        if let url = Bundle.main.url(forResource: "countries", withExtension: "json") {
            let data = try? Data(contentsOf: url)
            
            if let jsonCountries = try? JSONDecoder().decode(Countries.self, from: data!) {
                countries = jsonCountries.countries
                tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "DetailTableView") as? DetailTableViewController {
            vc.country = countries[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

