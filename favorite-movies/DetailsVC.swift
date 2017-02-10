//
//  DetailsVC.swift
//  favorite-movies
//
//  Created by Shoenick on 2/8/17.
//  Copyright © 2017 Shoenick. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    @IBOutlet weak var movieImg: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieUrl: UILabel!
    
    @IBOutlet weak var moviePlot: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    
    @IBAction func backBtn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
