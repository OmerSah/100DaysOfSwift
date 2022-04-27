//
//  ViewController.swift
//  MilestoneProject
//
//  Created by Ömer Faruk Şahin on 27.04.2022.
//

import UIKit

class ViewController: UITableViewController {

    var countryImages = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.contains(".png") {
                let token = item.components(separatedBy: "@")
                countryImages.append(token[0])
            }
        }
        
        title = "Country Flags"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        print(countryImages)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryImages.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = countryImages[indexPath.row].uppercased()
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.imageName = countryImages[indexPath.row] + "@3x.png"
            vc.imageTitle = "\(indexPath.row + 1) of \(countryImages.count)"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
