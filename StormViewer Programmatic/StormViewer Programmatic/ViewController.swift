//
//  ViewController.swift
//  StormViewer Programmatic
//
//  Created by Rahmetullah on 12.06.2022.
//

import UIKit
import SnapKit


class ViewController: UITableViewController {
var pictures = [String]()
var tableVC = UITableViewController()
let cellId = "Pictures"
let backButton = UIBarButtonItem()
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
            
        view.backgroundColor = .white
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("nssl") {
                // this a pic to load
                pictures.append(item)
            }
           
        }
     
        
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:cellId, for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = view.backgroundColor
        cell.textLabel?.text = pictures[indexPath.row]
       
        return cell
    }
    
     
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = DetailViewController()
        vc.selectedImage = pictures[indexPath.row]
   
        navigationController?.pushViewController(vc, animated: true)
    }
}

