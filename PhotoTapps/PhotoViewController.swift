//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Александр Реунов on 02.05.2020.
//  Copyright © 2020 Александр Реунов. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image

        // Do any additional setup after loading the view.
    }
    

    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
}
