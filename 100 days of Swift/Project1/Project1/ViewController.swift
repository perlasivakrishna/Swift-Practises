//
//  ViewController.swift
//  Project1
//
//  Created by siva krishna on 03/10/19.
//  Copyright © 2019 Siva Krishna. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items where item.hasPrefix("nssl") {
            pictures.append(item)
        }
        
        print(pictures)
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let details = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController{
            details.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(details, animated: true)
        }
    }


}

