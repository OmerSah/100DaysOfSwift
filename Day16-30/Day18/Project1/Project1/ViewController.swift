//
//  ViewController.swift
//  Project1
//
//  Created by Ömer Faruk Şahin on 13.04.2022.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Storm Viewer"
        // Big titles on navigation bar
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        // Sort the items
        pictures.sort()
        print(pictures)
    
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareApp))
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pushDetailViewController(pictureIndex: indexPath.row)
    }
    
    func pushDetailViewController(pictureIndex: Int) {
        let detailView = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController
        if let detail = detailView {
            detail.selectedImage = pictures[pictureIndex]
            detail.titleOfBar = "Picture \(pictureIndex + 1) of \(pictures.count)"
            navigationController?.pushViewController(detail, animated: true)
        }
    }
    
    @objc func shareApp() {
        let vc = UIActivityViewController(activityItems: ["You can dowload my app from App Store maybe in the future."], applicationActivities: [])
        present(vc,animated: true)
    }
}
