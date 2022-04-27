//
//  DetailViewController.swift
//  MilestoneProject
//
//  Created by Ömer Faruk Şahin on 27.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var imageName: String?
    var imageTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = imageName {
            imageView!.image = UIImage(named: imageToLoad)
        }
        
        title = imageTitle
        navigationItem.largeTitleDisplayMode = .never
       
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped() {
        guard let image = imageView?.image?.pngData() else { return }
        let flag = imageName?.components(separatedBy: "@")[0].uppercased()
        let ac = UIActivityViewController(activityItems: [image, "THE FLAG OF \(flag!)"], applicationActivities: [])
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
