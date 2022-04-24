//
//  DetailViewController.swift
//  Project1
//
//  Created by Ömer Faruk Şahin on 16.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var titleOfBar: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = titleOfBar
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
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
        guard let image = imageView?.image?.jpegData(compressionQuality: 0.8) else {
            print("There is no image with this name.")
            return
        }
        let vc = UIActivityViewController(activityItems: [image,"Hey, you are sharing a photo!"], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc,animated: true)
        
    }
}
